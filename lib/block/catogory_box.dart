import 'package:flutter/material.dart';

class CatogoryBox extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final color;
  final shadow;
  const CatogoryBox({Key? key, required this.onTap, required this.title, required this.color, required this.shadow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15,15,1,1),
            child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white70),),
          ),
          height: 70,
          width: 140,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: shadow
          ),
        ),
      ),
    );
  }
}
