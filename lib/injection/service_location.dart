import 'package:caravansary/blends/blends_bloc.dart';
import 'package:caravansary/recipes/recipes_bloc.dart';
import 'package:caravansary/spices_herbs/spices_herbs_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  _setupBlocs();
}

void _setupBlocs() {
  sl.registerFactory(() => BlendsBloc());
  sl.registerFactory(() => RecipesBloc());
  sl.registerFactory(() => SpicesHerbsBloc());
}
