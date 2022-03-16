import 'package:flutter/material.dart';
import 'package:joke/joke_app.dart';
import 'package:joke/providers/joke_provider.dart';
import 'package:joke/utilities/container.dart';
import 'package:provider/provider.dart';

void main() {
  setupServiceLocator();
  runApp(
    ChangeNotifierProvider<JokeProvider>(
      create: (context) => JokeProvider()..getRandomJoke(),
      child: const JokeApp(),
    ),
  );
}
