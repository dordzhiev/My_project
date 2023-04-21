import 'package:courier_app/services/api_service.dart';
import 'package:courier_app/services/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerSingletonAsync<SPService>(SPService.getInstance);
  await getIt.isReady<SPService>();
  getIt.registerSingletonAsync<APIService>(APIService.getInstance);
  await getIt.isReady<APIService>();
}
