import 'package:flutter/material.dart';
import 'package:gradapp/const.dart';
import 'package:gradapp/pages/page_1.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: navbarColor,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150),
            const Text(
              'โปรแกรมจำแนกเกณฑ์ผู้ป่วย',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('โรงพยาบาลแม่สอด'),
            const SizedBox(height: 100),
            const Text('- โปรดเลือกข้อที่ตรงกับสถานการณ์มากที่สุด -'),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const PageOne();
                }), (route) => false);
              },
              child: Container(
                height: 60,
                width: 150,
                margin: const EdgeInsets.only(bottom: 25),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: const Center(
                  child: Text(
                    'เริ่มต้น',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Kanit',
                        fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
