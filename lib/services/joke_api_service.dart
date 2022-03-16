import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:joke/model/joke_model.dart';
import 'package:joke/utilities/static_values.dart';

class JokeAPIService {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: StaticValues.baseUrl,
      responseType: ResponseType.json,
      headers: {
        StaticValues.apiKeyKey: StaticValues.apiKey,
      },
    ),
  );

  Future<JokeModel?> getRandomJoke() async {
    try {
      var response = await _dio.get(StaticValues.randomUrl);
      if (response.statusCode == StaticValues.successCode) {
        return JokeModel.fromJson(response.data);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }
}
