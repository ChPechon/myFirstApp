import 'package:flutter/material.dart';
import 'package:gradapp/const.dart';

// ignore: must_be_immutable
class EightModel extends StatelessWidget {
  int choice;
  EightModel({super.key, required this.choice});

  @override
  Widget build(BuildContext context) {
    List<Widget> choices = [
      choiceOne(),
      choiceTwo(),
      choiceThree(),
      choiceFour()
    ];
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
        '- มีอาการรบกวนที่ควบคุมได้และเป็นอาการที่สามารถจัดการให้หายได้ต้องเฝ้าระวัง',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        'วันละ 1 ครั้ง หรือไม่มีอาการ',
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
        '- มีอาการรบกวนที่ควบคุมได้แต่มีโอกาสที่จะรุนแรงเพิ่มขึ้นได้หากมีสิ่งกระตุ้นต้องเฝ้าระวัง',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        'อย่างน้อยเวรละ 1 ครั้ง',
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
        '- มีอาการรบกวนที่รุนแรงแต่อยู่ในความควบคุมได้แต่มีแนวโน้มหรือมีโอกาสเกิดความรุนแรงเพิ่มขึ้นได้',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        'ต้องเฝ้าระวังอย่างน้อยทุก 4 ชั่วโมง',
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
        '- ต้องการบรรเทาอาการรบกวนมาก ทุกข์ทรมานจากการรบกวนทําให้ไม่สามารถพักผ่อนได้และควบคุมไม่ได้หรือควบคุมได้ยาก เกิดความเครียดรุนแรง',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        'ต้องเฝ้าระวังตลอดเวลาหรืออย่างน้อยทุก 1 ชั่วโมง',
        style: TextStyle(fontSize: globalFontSize, fontWeight: FontWeight.bold),
      ),
      Text(
        'เช่น ความปวดที่รุนแรงอาการเวียนศีรษะ คลื่นไส้อาเจียนที่ควบคุมไม่ได้มีเสมหะมาก เป็นต้น',
        style: TextStyle(fontSize: globalFontSize),
      ),
    ]);
  }
}
