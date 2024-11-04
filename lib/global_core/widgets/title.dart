import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.rocket_launch_rounded),
        const SizedBox(width: 5.0,),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}