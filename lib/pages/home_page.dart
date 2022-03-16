import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:joke/providers/joke_provider.dart';
import 'package:joke/widget/joke_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)?.appName ?? "",
        ),
      ),
      body: Consumer<JokeProvider>(
        builder: (context, jokeProvider, child) => JokeWidget(
          jokeEnum: jokeProvider.status,
          jokeModel: jokeProvider.jokeModel,
        ),
      ),
    );
  }
}
