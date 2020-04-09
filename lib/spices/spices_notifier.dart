import 'package:caravansary/data/spices/spices_repository.dart';
import 'package:caravansary/spices/spices_state.dart';
import 'package:flutter/material.dart';

class SpicesNotifier extends ChangeNotifier {
  final SpicesRepository _repository;

  SpicesState _state;

  SpicesState get state => _state;

  SpicesNotifier(this._repository) {
    init();
  }

  void init() async {
    _state = SpicesLoading();
    final spices = await _repository.getAllSpices();
    _state = SpicesSuccess(spices);
  }
}
