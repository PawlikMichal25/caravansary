import 'package:caravansary/commons/architecture/base_notifier.dart';
import 'package:caravansary/data/spices/spices_repository.dart';
import 'package:caravansary/spices/spices_state.dart';

class SpicesNotifier extends BaseNotifier<SpicesState> {
  final SpicesRepository _repository;

  SpicesNotifier(this._repository);

  void init() async {
    updateState(SpicesLoading());
    final spices = await _repository.getAllSpices();
    updateState(SpicesSuccess(spices));
  }
}
