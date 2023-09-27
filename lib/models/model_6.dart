import 'package:flutter/material.dart';
import 'package:gradapp/const.dart';

// ignore: must_be_immutable
class SixModel extends StatelessWidget {
  int choice;
  SixModel({super.key, required this.choice});

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
        '- ต้องการคําแนะนําโดยทั่วไปเช่น กฎระเบียบ การใช้บริการ การดูแลตนเองเมื่อเจ็บป่วยทั่วไป เช่น เมื่อเป็นหวัด การดูแลบาดแผลเล็กๆเป็นต้น',
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
        '- มีความเจ็บป่วยเรื้อรังที่ต้องการข้อมูลความรู้ความเข้าใจ เฉพาะที่มีความชัดเจนเพียงพอต่อการควบคุมอาการ/การดูแลตนเอง หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- อยู่ภาวะการเตรียมตรวจหรือเตรียมผ่าตัด ต้องการข้อมูลที่ ชัดเจนพอที่จะเตรียมร่างกายและจิตใจให้พร้อมต่อการตรวจหรือการผ่าตัด หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- เครียด/วิตกกังวลเล็กน้อยต้องการการให้กําลังใจ',
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
        '- มีความวิตกกังวลและต้องการข้อมูลที่ชัดเจนต้องอาศัยการยกตัวอย่างการสอนและการปรึกษา',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ซึมเศร้า ท้อแท้ หมดกําลังใจ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ต้องการข้อมูลเพื่อใช้ในการตัดสินใจหรือเลือกใช้การปฏิบัติ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ต้องเรียนรู้การดูแลตนเองโดยอาศัยความรู้และเทคนิคเฉพาะ เช่นการดูแลสายสวนปัสสาวะสายยางให้อาหารและอาหารปั่น การดูดเสมหะและการดูแลท่อช่วยหายใจ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ต้องการข้อมูลที่ชัดเจนเฉพาะเจาะจงในกรณีที่เจ็บป่วยเรื้อรังและควบคุมอาการไม่ได้',
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
        '- มีความกลัว/วิตกกังวลสูงมาก อยู่ในช่วงการรับรู้ความ เจ็บป่วยในระยะแรกต้องการข้อมูลที่มีความชัดเจน เฉพาะเจาะจง ต้องมีความรู้ ความเข้าใจที่ชัดเจนและมาก พอที่จะใช้ปฏิบัติตัวได้อย่างปลอดภัยเนื่องจากอยู่ในภาวะที่ จําเป็นต้องเฝ้าระวังใกล้ชิด หรือมีอาการ/อาการแสดงที่เปลี่ยนแปลงตลอดเวลาควบคุมไม่ได้ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ได้รับความกระทบกระเทือนใจอย่างรุนแรงหรืออยู่ใน ภาวะการสูญเสียไม่ว่าเป็นการสูญเสียการทําหน้าที่ของอวัยวะหรือพิการหรืออยู่ในระยะการเปลี่ยนผ่าน หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - มีความเข้าใจผิดเกิดความขัดแย้งกับแนวทาง/แผนการ รักษา/พยาบาลอย่างรุนแรงหรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ไม่ยอมรับสภาพความเจ็บป่วยและ/หรือข้อมูล/การเรียนรู้ใดๆ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - การรับรู้ไม่สอดคล้องกับสภาวะความเจ็บป่วยหรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ไม่สนใจตนเอง สิ้นหวังอยากตาย',
        style: TextStyle(fontSize: globalFontSize),
      ),
    ]);
  }
}
