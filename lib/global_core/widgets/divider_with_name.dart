import 'package:flutter/material.dart';

class DividerWithName extends StatelessWidget {
  const DividerWithName({super.key, required this.sectionName});

  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            height: 2.0,
            thickness: 1.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(sectionName,
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 2.0,
            thickness: 1.0,
          ),
        ),
      ],
    );
  }
}