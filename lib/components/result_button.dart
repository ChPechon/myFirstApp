import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultButton extends StatelessWidget {
  Widget nextPage;
  ResultButton({super.key, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) {
          return nextPage;
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
            'แสดงผลลัพท์',
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
