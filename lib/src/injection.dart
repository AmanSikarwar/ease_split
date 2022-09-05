import 'package:ease_split/src/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String environment) {
  $initGetIt(getIt, environment: environment);
}
