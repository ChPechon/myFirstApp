import 'package:flutter/material.dart';
import 'package:gradapp/components/reset_button.dart';
import 'package:gradapp/const.dart';
import 'package:gradapp/models/grader_model.dart';
import 'package:gradapp/models/score_model.dart';
import 'package:gradapp/pages/main_page.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    int result = context.read<ScoreModel>().getResult();
    int maxScore = context.read<ScoreModel>().getLength() * 4;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: navbarColor,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: const Text(
                'สรุปผลการจำแนกผู้ป่วย',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(30),
              width: 350,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 0,
                    color: Colors.black26,
                  )
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'คะแนนรวม',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      '$result / $maxScore',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Text('- ผู้ป่วยอยู่ในเกณฑ์ -'),
                    const SizedBox(height: 15),
                    if (result <= 8)
                      GraderModel(result: 0)
                    else if (result >= 9 && result <= 14)
                      GraderModel(result: 1)
                    else if (result >= 15 && result <= 20)
                      GraderModel(result: 2)
                    else if (result >= 21 && result <= 26)
                      GraderModel(result: 3)
                    else if (result >= 27 && result <= 32)
                      GraderModel(result: 4)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ResetButton(FirstPage: const MainPage()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}
