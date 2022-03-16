import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:joke/model/joke_model.dart';
import 'package:joke/utilities/joke_enum.dart';
import 'package:joke/widget/custom_error_widget.dart';
import 'package:joke/widget/loading_widget.dart';
import 'package:joke/widget/punchline_widget.dart';
import 'package:joke/widget/setup_widget.dart';

class JokeWidget extends StatelessWidget {
  final JokeEnum jokeEnum;
  final JokeModel? jokeModel;

  const JokeWidget({
    Key? key,
    required this.jokeEnum,
    required this.jokeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var strings = AppLocalizations.of(context);
    if (jokeEnum == JokeEnum.loading) {
      return const LoadingWidget();
    } else if (jokeEnum == JokeEnum.setup) {
      return SetupWidget(
        setupText: jokeModel?.setup ?? "",
      );
    } else if (jokeEnum == JokeEnum.punchline) {
      return PunchlineWidget(
        jokeModel: jokeModel,
      );
    } else if (jokeEnum == JokeEnum.error) {
      return CustomErrorWidget(
        message: strings?.canNotGetJoke ?? "",
      );
    } else if (jokeEnum == JokeEnum.noConnection) {
      return CustomErrorWidget(
        message: strings?.youDontHaveConnection ?? "",
      );
    }

    return Container();
  }
}
