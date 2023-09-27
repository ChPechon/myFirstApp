import 'package:flutter/material.dart';
import 'package:gradapp/models/score_model.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PreviousButton extends StatelessWidget {
  Widget PreviousPage;
  PreviousButton({super.key, required this.PreviousPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ScoreModel>().previous();
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) {
          return PreviousPage;
        }), (route) => false);
      },
      child: Container(
        height: 60,
        width: 150,
        margin: EdgeInsets.only(bottom: 25),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Text(
            '< ข้อก่อนหน้า',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Kanit',
            fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
