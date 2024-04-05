import 'package:flutter/material.dart';

class CirCleButton extends StatelessWidget {
  final String title;
  final icon;
  const CirCleButton({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.yellow[700],
            borderRadius: BorderRadius.circular(43),
          ),
          child: icon,
        ),
        Text(title),
      ],
    );
  }
}
