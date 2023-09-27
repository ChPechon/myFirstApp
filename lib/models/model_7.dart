import 'package:flutter/material.dart';
import 'package:gradapp/const.dart';

// ignore: must_be_immutable
class SevenModel extends StatelessWidget {
  int choice;
  SevenModel({super.key, required this.choice});

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
        '- ได้รับยาที่ใช้รักษา/ควบคุมอาการในลักษณะประจํา หรือยา บํารุง หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- ต้องกระตุ้นการดูแลตนเอง เช่น การฟื้นฟูสภาพด้วยการทํา Active Exercise การปฏิบัติกิจวัตรประจําวัน เช่น การรับประทานอาหาร การดูแลความสะอาดร่างกาย การชั่งน้ําหนักตนเอง การตรวจปัสสาวะด้วยตนเอง เป็นต้น',
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
        '- ได้รับยาเพื่อการรักษา/ควบคุมอาการโดยทั่วไปต้องการการเฝ้าระวังตามปกติ หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- มีอุปกรณ์/สายที่สวนท่ออวัยวะที่ไม่ซับซ้อน เช่น สายสวน ปัสสาวะ สาย NG - tube Penrose drain เป็นต้น หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- ต้องการการฟื้นฟูสภาพ/ป้องกันภาวะแทรกซ้อนของแขน ขา(Active Passive ของแขน ขา) เป็นต้น โดยการช่วยเหลือจากบุคลากร หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        '- การทําแผลสะอาด ไม่ยุ่งยากซับซ้อน',
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
        '- ต้องได้รับยาที่จําเป็น ต้องประเมินอย่างชัดเจน ระมัดระวังและ/หรือช่วยเหลือ/ทําหัตถการก่อนการให้ยาและหลังให้ยา เช่น การให้ยาในช่วงการปรับระดับยาควบคุมระดับน้ําตาลในเลือด ระดับความดันโลหิตอัตราการเต้นของหัวใจเป็นต้น หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ต้องได้รับการช่วยเหลือปฏิบัติที่ใช้ทักษะเฉพาะโดยทั่วไปที่ ไม่ยุ่งยากแต่ต้องปฏิบัติบ่อยหรือจํานวนมาก เช่น แผลตื้นแต่มีจํานวนมาก เช็ดตาในรายที่ไม่มีแผลหรืออันตรายที่ซับซ้อนเป็นต้น หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ได้รับการทําหัตถการทั่วไปเช่นการสวนปัสสาวะ อุจจาระ การสวนล่างช่องคลอด การทํา Postural drainage เป็นต้นหรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ต้องได้รับการฟื้นฟูสภาพโดยบุคลากรอย่างใกล้ชิด',
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
        '- ต้องได้รับยา/สารน้ําทางหลอดเลือดดําที่มีผลต่อการ ทํางานของอวัยวะที่สําคัญต่อการมีชีวิตและ/หรือต้องเฝ้าระวัง อย่างใกล้ชิดตลอดเวลาต้องมีบันทึกการเฝ้าระวังทุก 15 นาทีถึง 1 ชั่วโมง หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ต้องการการช่วยเหลือจากการปฏิบัติที่ต้องใช้ทักษะเฉพาะ เช่น การทําแผลขนาดใหญ่แผลที่ซับซ้อนเกี่ยวข้องกับอวัยวะ ระดับลึกหรือใกล้อวัยวะที่ละเอียดอ่อน ต้องระมัดระวังสูง เสี่ยงต่ออันตรายต่ออวัยวะนั้นๆ หรือ อวัยวะใกล้เคียง เช่นแผลฉีกขาดที่เปลือกตา เป็นต้น หรือ',
        style: TextStyle(fontSize: globalFontSize),
      ),
      Text(
        ' - ได้รับการทําหัตถการต่ออวัยวะที่สําคัญต่อการมีชีวิต ต้องการการเฝ้าระวังและดูแลใกล้ชิด เช่นการทํา pericardialtaping, การเจาะตับ',
        style: TextStyle(fontSize: globalFontSize),
      ),
    ]);
  }
}
