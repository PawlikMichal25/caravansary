import 'package:caravansary/spices/spice_item.dart';
import 'package:caravansary/spices/spices_notifier.dart';
import 'package:caravansary/spices/spices_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SpicesPage extends StatelessWidget {
  const SpicesPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Spices & Herbs'),
      ),
      body: Selector<SpicesNotifier, SpicesState>(
        selector: (_, notifier) => notifier.state,
        builder: (_, state, __) {
          return state.when(
            spicesLoading: (_) => _buildSpicesLoading(),
            spicesSuccess: (it) => _buildSpicesSuccess(it),
          );
        },
      ),
    );
  }

  Widget _buildSpicesLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildSpicesSuccess(SpicesSuccess state) {
    return ListView.builder(
      itemCount: state.spices.length,
      itemBuilder: (_, index) => SpiceItem(state.spices[index]),
    );
  }
}
