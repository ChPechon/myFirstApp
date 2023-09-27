import 'package:flutter/material.dart';
import 'package:gradapp/models/score_model.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ResetButton extends StatelessWidget {
  Widget FirstPage;
  ResetButton({super.key, required this.FirstPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ScoreModel>().reset();
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) {
          return FirstPage;
        }), (route) => false);
      },
      child: Container(
        height: 60,
        width: 150,
        margin: EdgeInsets.only(bottom: 25),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Text(
            'เริ่มใหม่',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Kanit',
            fontSize: 16),
          ),
        ),
      ),
    );
  }
}
