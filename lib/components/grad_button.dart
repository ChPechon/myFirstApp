import 'package:flutter/material.dart';
import 'package:gradapp/models/score_model.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class GradButton extends StatelessWidget {
  final int choice;
  bool isChoosen;
  GradButton({super.key, required this.choice, required this.isChoosen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (!isChoosen) {
            context.read<ScoreModel>().choose(choice);
            print(context.read<ScoreModel>().score);
          }
        },
        child: Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: isChoosen ? Colors.grey[400] : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Text(
            choice.toString(),
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
