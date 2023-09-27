import 'package:flutter/material.dart';
import 'package:gradapp/const.dart';

// ignore: must_be_immutable
class ThreeModel extends StatelessWidget {
  int choice;
  ThreeModel({super.key, required this.choice});

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
        '- ได้รับการรักษาด้วยหัตถการทั่วไป เช่น เจาะเลือด ใส่สายสวน ปัสสาวะ ผ่าฝี เป็นต้น หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- ได้รับการตรวจรักษาทั่วไปไม่ต้องใช้วิธีการตรวจรักษาพิเศษ ใดๆ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- ได้รับการผ่าตัดใหญ่ในระยะพักฟื้นไม่มีภาวะแทรกซ้อน หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ไม่มีการใช้อุปกรณ์พิเศษเพื่อการช่วยชีวิต',
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
        ' - ได้รับการรักษาด้วยหัตถการต่ออวัยวะที่สําคัญต่อชีวิตแบบไม่ ฉุกเฉิน เช่น เจาะปอด เจาะตับ เจาะหลัง เพื่อส่งตรวจ เป็นต้นและผู้ป่วยมีภาวะคงที่ ควบคุมอาการได้ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ได้รับการผ่าตัดอวัยวะที่สําคัญต่อชีวิต 48 -72 ชั่วโมงแรก ที่ควบคุมอาการได้ หรือ ระยะ 48 ชั่วโมง หลังผ่าตัดใหญ่ที่ควบคุมอาการได้ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ใช้อุปกรณ์พิเศษทางการแพทย์เพื่อช่วยชีวิตที่อยู่ในระยะที่ ควบคุมอาการได้ไม่มีการปรับเปลี่ยนการทํางานอุปกรณ์แต่มีความจําเป็นต้องเฝ้าระวังเพื่อวางแผนการปรับลดการใช้อุปกรณ์',
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
        ' - ได้รับการรักษาด้วยหัตถการต่ออวัยวะที่สําคัญต่อชีวิตเร่งด่วน เช่น การทํา hemodialysis, Peritoneal tap ในรายที่ควบคุมอาการได้เป็นต้น หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ได้รับการผ่าตัดอวัยวะที่สําคัญต่อชีวิตใน 48 ชั่วโมงที่ควบคุม อาการได้ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ได้รับการผ่าตัดใหญ่ในระยะที่ควบคุมอาการเปลี่ยนแปลงได้ใน 24 ชั่วโมง หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ได้รับการช่วยเหลือชีวิตด้วยอุปกรณ์พิเศษทางการแพทย์ในระยะที่ควบคุมอาการได้ มีการเปลี่ยนแปลง หรือปรับการทํางาน ของอุปกรณ์น้อย หรืออยู่ในช่วงการปรับลดการใช้อุปกรณ์ช่วยชีวิต (weaning)',
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
        '- ได้รับการรักษาด้วยหัตถการต่ออวัยวะที่สําคัญต่อการมีชีวิตในลักษณะฉุกเฉิน เช่น CPR, Emergency hemodialysis หรือ cardiac catheterization หรือ pericardial tap ในรายที่อาการไม่คงที่ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- ได้รับการผ่าตัดใหญ่ต่ออวัยวะที่สําคัญต่อการมีชีวิต (Vital organs) ได้แก่ สมอง หัวใจ ปอด ตับ ไต ใน 48 ชั่วโมงแรกหรือ หลัง 48 ชั่วโมงแรก ที่ยังไม่สามารถควบคุมอาการเปลี่ยนแปลงได้ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- ได้รับการผ่าตัดใหญ่ในอวัยวะอื่นที่ไม่สามารถควบคุมอาการ เปลี่ยนแปลงได้ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ได้รับการช่วยชีวิตด้วยอุปกรณ์พิเศษทางการแพทย์ในระยะแรก ซึ่งต้องเฝ้าระวังใกล้ชิดและ การปรับการทํางานของอุปกรณ์ตามการเปลี่ยนแปลงของผู้ป่วยเช่น การใช้เครื่องช่วยหายใจ เครื่องกระตุ้นไฟฟ้าหัวใจ (Cardiac pacemaker) เป็นต้น',
        style: TextStyle(fontSize: globalFontSize),
      ),
    ]);
  }
}
