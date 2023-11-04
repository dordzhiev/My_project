import 'package:courier_app/services/api_service.dart';
import 'package:courier_app/services/foreground/foreground_service.dart';
import 'package:courier_app/services/graphql_api_service.dart';
import 'package:courier_app/services/graphql_service.dart';
import 'package:courier_app/services/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerLazySingletonAsync<SPService>(SPService.getInstance);
  getIt.registerLazySingletonAsync<GraphQLService>(GraphQLService.getInstance);
  getIt.registerLazySingleton<APIService>(GraphQLAPIService.getInstance);
  getIt.registerLazySingleton<ForegroundService>(ForegroundService.getInstance);
  await getIt.isReady<SPService>();
  await getIt.isReady<GraphQLService>();
}
