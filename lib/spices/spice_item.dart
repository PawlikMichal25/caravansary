import 'package:caravansary/data/spices/model/spice.dart';
import 'package:flutter/material.dart';

class SpiceItem extends StatelessWidget {
  final Spice spice;

  const SpiceItem(this.spice);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(spice.name),
    );
  }
}
