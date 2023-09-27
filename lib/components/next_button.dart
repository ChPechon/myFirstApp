import 'package:flutter/material.dart';
import 'package:gradapp/models/score_model.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class NextButton extends StatelessWidget {
  Widget nextPage;
  NextButton({super.key, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ScoreModel>().next();
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) {
          return nextPage;
        }), (route) => false);
      },
      child: Container(
        height: 60,
        width: 150,
        margin: EdgeInsets.only(bottom: 25),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Text(
            'ข้อถัดไป >',
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
