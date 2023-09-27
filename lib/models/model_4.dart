import 'package:flutter/material.dart';
import 'package:gradapp/const.dart';

// ignore: must_be_immutable
class FourModel extends StatelessWidget {
  int choice;
  FourModel({super.key, required this.choice});

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
        '- ไม่มีปัญหาการปรับตัวทางด้านอารมณ์และจิตสังคม ผล LabPotassium (ปกติ 3.5 - 5.4 mmol/L) Sodium(ปกติ 150 -154 mmol/L) Creatinine(ปกติ 0.6 -1.4 mg% )',
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
        ' - หรือมีพฤติกรรมที่ผิดปกติด้านอารมณ์และจิตสังคมหรือผิดปกติจากพยาธิสภาพแต่ปรับตัวและควบคุมตนเองได้ มีโอกาสทําร้ายตนเองและผู้อื่นน้อยหรือเป็นบางครั้ง ผล Lab2Potassium 5.5 - 5.9 mmol/L หรือ 3.0 - 3.4 mmol/L Sodium 155 - 159 mmol/L หรือ 130-149 mmol/L Creatinine 1.5 - 1.9 Mg %Urine output 600-800 cc/day',
        style: TextStyle(fontSize: globalFontSize),
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
        ' - มีพฤติกรรมก้าวร้าว รุนแรงมีโอกาสทําร้ายตนเองหรือ เป็นอันตรายต่อตนเองและผู้อื่น แต่อยู่ในภาวะที่ควบคุมได้โดยต้องดูแลใกล้ชิดหรือผล Lab Potassium 6.0 - 6.9 mmol/L หรือ 2.5 - 2.9 mmol/L Sodium 160 - 179 mmol/L หรือ 111 - 129 mmol/L Creatinine 2.0 - 3.4 mg%Urine output < 200 cc/4hr',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - เศร้าโศก/ซึมเศร้า ไม่สามารถปรับตัวได',
        style: TextStyle(fontSize: globalFontSize),
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
        '- มีพฤติกรรมที่ผิดปกติ ทําร้ายตนเอง และ/หรือผู้ป่วย พฤติกรรมที่อาจเป็นอันตรายก้าวร้าวและรุนแรงไม่สามารถ ควบคุมได้ หรือมีโอกาส/สัญญาณเตือนว่าจะฆ่าตัวตาย หรือ Potassium ≥ 7 mmol/L หรือ < 2.5 mmol/L Sodium ≥ 180 mmol/L หรือ ≤ 110 mmol/L Creatinine ≥ 3.5 mg%Urine output < 30 cc/hr',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- มีพฤติกรรมผิดปกติด้านการปรับตัวทางอารมณ์และจิตสังคมที่รุนแรง',
        style: TextStyle(fontSize: globalFontSize),
      ),
    ]);
  }
}
