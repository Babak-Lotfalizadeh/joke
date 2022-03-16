import 'package:get_it/get_it.dart';
import 'package:joke/services/joke_api_service.dart';

final GetIt getIt = GetIt.instance;

setupServiceLocator() {
  getIt.registerSingleton<JokeAPIService>(JokeAPIService());
}
