import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'config.config.dart';

late final GetIt getIt;

@InjectableInit(
  generateForDir: ['lib', 'bin'],
  rootDir: 'bin',
  preferRelativeImports: true,
)
Future<void> initDependencies() async {
  getIt = GetIt.asNewInstance();
  getIt.init();
}
