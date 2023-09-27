import 'package:flutter/material.dart';

class GradCard extends StatelessWidget {
  final Widget content;
  const GradCard({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      width: 350,
      height: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 0,
            
            color: Colors.black26,
            
          )
        ],
      ),
      child: content,
    );
  }
}
