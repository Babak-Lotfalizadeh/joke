import 'package:flutter/material.dart';
import 'package:joke/model/joke_model.dart';

class PunchlineWidget extends StatelessWidget {
  final JokeModel? jokeModel;

  const PunchlineWidget({
    Key? key,
    required this.jokeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(jokeModel?.setup ?? ""),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              jokeModel?.punchline ?? "",
              style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize: 20,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
