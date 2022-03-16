import 'package:flutter/foundation.dart';
import 'package:joke/model/joke_model.dart';
import 'package:joke/services/joke_api_service.dart';
import 'package:joke/utilities/container.dart';
import 'package:joke/utilities/joke_enum.dart';

class JokeProvider extends ChangeNotifier {
  final _nextJokeDelay = const Duration(seconds: 3);
  JokeModel? _jokeModel;
  JokeEnum _status = JokeEnum.loading;

  JokeModel? get jokeModel => _jokeModel;
  JokeEnum get status => _status;

  void getRandomJoke() async {
    _jokeModel = await getIt<JokeAPIService>().getRandomJoke();
    if (_jokeModel != null) {
      _status = JokeEnum.setup;
    } else {
      _status = JokeEnum.error;
    }
    notifyListeners();
  }

  void showPunchline() {
    _status = JokeEnum.punchline;
    notifyListeners();
    showNextJoke();
  }

  void showNextJoke() {
    Future.delayed(_nextJokeDelay, () {
      restart();
    });
  }

  void restart() {
    _status = JokeEnum.loading;
    notifyListeners();
    getRandomJoke();
  }
}
