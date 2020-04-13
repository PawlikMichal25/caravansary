import 'package:caravansary/blends/blends_notifier.dart';
import 'package:caravansary/data/spices/spices_database.dart';
import 'package:caravansary/data/spices/spices_repository.dart';
import 'package:caravansary/recipes/recipes_notifier.dart';
import 'package:caravansary/spices/spices_notifier.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  _setupData();
  _setupBlocs();
}

void _setupData() {
  sl.registerFactory(() => SpicesDatabase());
  sl.registerSingleton(SpicesRepository(sl.get<SpicesDatabase>()));
}

void _setupBlocs() {
  sl.registerFactory(() => BlendsNotifier());
  sl.registerFactory(() => RecipesNotifier());
  sl.registerFactory(() => SpicesNotifier(sl.get<SpicesRepository>()));
}
