import 'package:flutter/material.dart';
import 'package:gradapp/const.dart';

// ignore: must_be_immutable
class TwoModel extends StatelessWidget {
  int choice;
  TwoModel({super.key, required this.choice});

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
        ' - อาการ/อาการแสดงทางระบบประสาทปกติหรือคงที่',
        style: TextStyle(fontSize: globalFontSize),
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
        ' - อาการ/อาการแสดงทางระบบประสาทปกติหรือคงทีมีโอกาสเปลี่ยนแปลงน้อย',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ต้องเฝ้าระวังเวรละ 1 ครั้ง',
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
        ' - อาการ/อาการแสดงทางระบบประสาทผิดปกติแต่อยู่ในภาวะทีควบคุมได้ มีโอกาสเปลียนแปลงเลวลง',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        'ต้องเฝ้าระวังทุก 2-4 ชั่วโมง',
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
        ' - มีการเปลี่ยนแปลงหรือมีโอกาสเปลี่ยนแปลงของ GCS ได้ตลอดเวลา ต้องเฝ้าระวังอาการ/อาการแสดงทางระบบประสาท(Neurological Signs)',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        'อย่างน้อยทุก ½ - 1 ชั่วโมง',
        style: TextStyle(fontSize: globalFontSize, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
