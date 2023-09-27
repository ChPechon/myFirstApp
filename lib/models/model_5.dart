import 'package:flutter/material.dart';
import 'package:gradapp/const.dart';

// ignore: must_be_immutable
class FiveModel extends StatelessWidget {
  int choice;
  FiveModel({super.key, required this.choice});

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
        '- สามารถช่วยเหลือตนเองได้ทั้งหมดในการทํากิจวัตร ประจําวัน',
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
        'สามารถช่วยเหลือตนเองได้ในการทํากิจวัตรประจําวันได้ บางส่วน ดังนี',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- รับประทานอาหารเองได้ แต่ต้องมีผู้ช่วยเหลือ เช่น จัดทำ จัดอาหาร หรือ ต้องได้อาหารทางสายยางและไม่มีปัญหาระบบทางเดินอาหาร',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- เคลื่อนไหวตนเองได้บ้างลุกเดินได้ แต่ต้องมีผู้ช่วยเหลือและต้องมีอุปกรณ์ช่วย',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- ทําความสะอาดร่างกายได้ แต่ต้องมีผู้ช่วยบนเตียงหรือในห้องน้ํา',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- ขับถ่ายเองได้แต่ต้องมีผู้ช่วยบนเตียงหรือในห้องน้ํา',
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
        'ไม่สามารถช่วยเหลือตนเองในการทํากิจวัตรประจําวันได้อย่าง',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        'น้อย 3 ใน 4 ข้อ ต่อไปนี้',
        style: TextStyle(fontSize: globalFontSize,
        fontWeight: FontWeight.bold),
      ),
      Text(
        ' - รับประทานอาหารเองไม่ได้และกลืนอาหารได้แต่สําลักง่าย หรือต้องได้อาหารทางสายยางในรายที่มีปัญหาระบบทางเดินอาหาร',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - เคลื่อนไหวบนเตียงได้บ้างแต่ต้องมีผู่ช่วยเหลือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ต้องทําความสะอาดร่างกายบนเตียงและต้องมีผู้ช่วยแต่ สามารถช่วยขยับตัวได้บ้าง',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ขับถ่ายได้ บนเตียงแต่ต้องมีผู้ช่วยเหลือ และอาจต้องช่วย สวน ควัก ล้าง',
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
        'ไม่สามารถช่วยเหลือตนเองในการทํากิจวัตรประจําวันด้วยตัวเองทั้งหมด',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - รับประทานอาหารไม่ได้ต้องได้รับอาหารทางหลอดเลือดดํา',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - เคลื่อนไหวด้วยตนเองไม่ได้ หรือควบคุมการเคลื่อนไหวเอง ไม่ได้',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ไม่สามารถทําความสะอาดร่างกาย/อวัยวะตนเองได้',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ควบคุมการขับถ่ายไม่ได้',
        style: TextStyle(fontSize: globalFontSize),
      ),
    ]);
  }
}
