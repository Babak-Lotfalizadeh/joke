import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String message;

  const CustomErrorWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.error),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
            ),
            child: Text(message),
          ),
        ],
      ),
    );
  }
}
