import 'package:flutter/material.dart';
import 'package:joke/providers/joke_provider.dart';
import 'package:provider/provider.dart';

class SetupWidget extends StatelessWidget {
  final String setupText;

  const SetupWidget({
    Key? key,
    required this.setupText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<JokeProvider>().showPunchline();
      },
      child: Center(
        child: Text(setupText),
      ),
    );
  }
}
