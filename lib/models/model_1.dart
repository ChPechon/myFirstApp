import 'package:flutter/material.dart';
import 'package:gradapp/const.dart';

// ignore: must_be_immutable
class OneModel extends StatelessWidget {
  int choice;
  OneModel({super.key, required this.choice});

  @override
  Widget build(BuildContext context) {
    List<Widget> choices = [choiceOne(), choiceTwo(), choiceThree(), choiceFour()];
    return choices[choice - 1];
  }

  Widget choiceOne() {
    return ListView(children: const [
      Center(
        child: Text(
          '1',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        ' - สัญญาณชีพคงที่และมีโอกาสเปลี่ยนแปลงได้น้อย',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ต้องเฝ้าระวังวันละ 1-2 ครั้ง',
        style: TextStyle(fontSize: globalFontSize, fontWeight: FontWeight.bold),
      ),
    ]);
  }

  Widget choiceTwo() {
    return ListView(children: const [
      Center(
        child: Text(
          '2',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        ' - สัญญาณชีพปกติแต่มีโอกาสเปลี่ยนแปลงได้ง่าย',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ต้องเฝ้าระวังทุก 4-6 ชั่วโมง',
        style: TextStyle(fontSize: globalFontSize, fontWeight: FontWeight.bold),
      ),
    ]);
  }

  Widget choiceThree() {
    return ListView(children: const [
      Center(
        child: Text(
          '3',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        ' - สัญญาณชีพผิดปกติแต่อยู่ในระดับที่ควบคุมได้ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - สัญญาณชีพปกติแต่มีโอกาสเปลี่ยนแปลงได้ตลอดเวลา',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        'ต้องเฝ้าระวังวันละ 1-2 ครั้ง',
        style: TextStyle(fontSize: globalFontSize, fontWeight: FontWeight.bold),
      ),
    ]);
  }

  Widget choiceFour() {
    return ListView(children: const [
      Center(
        child: Text(
          '4',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        ' - สัญญาณชีพผิดปกติ เปลี่ยนแปลงตลอดเวลา หรือ เปลี่ยนแปลงอย่างรวดเร็วของT,P,R และ/หรือ BP รวมถึงความผิดปกติ ของคลื่นไฟฟ้าหัวใจในลักษณะที่ผิดปกติรุนแรง',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        'ต้องเฝ้าระวังอย่างน้อยทุก 15 นาที',
        style: TextStyle(fontSize: globalFontSize, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
