import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GraderModel extends StatelessWidget {
  int result;
  GraderModel({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    List<Widget> graderList = [gradeOne(), gradeTwo(), gradeThree(), gradeFour(), gradeFive()];
    return graderList[result];
  }

  Widget gradeOne() {
    return Container(
      padding: const EdgeInsets.all(30),
      width: 200,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Column(
          children: [
            Text(
              'พักฟื้น',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget gradeTwo() {
    return Container(
      padding: const EdgeInsets.all(30),
      width: 200,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.green[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Column(
          children: [
            Text(
              'เจ็บป่วยเล็กน้อย',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget gradeThree() {
    return Container(
      padding: const EdgeInsets.all(30),
      width: 200,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.yellow[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Column(
          children: [
            Text(
              'หนักปานกลาง',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget gradeFour() {
    return Container(
      padding: const EdgeInsets.all(30),
      width: 200,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.red[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Column(
          children: [
            Text(
              'อาการหนัก',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget gradeFive() {
    return Container(
      padding: const EdgeInsets.all(30),
      width: 200,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.orange[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Column(
          children: [
            Text(
              'อาการหนักมาก',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}