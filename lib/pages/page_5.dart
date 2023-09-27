import 'package:flutter/material.dart';
import 'package:gradapp/components/grad_button.dart';
import 'package:gradapp/components/next_button.dart';
import 'package:gradapp/components/previous_button.dart';
import 'package:gradapp/const.dart';
import 'package:gradapp/models/model_5.dart';
import 'package:gradapp/models/score_model.dart';
import 'package:gradapp/pages/page_4.dart';
import 'package:gradapp/pages/page_6.dart';
import 'package:provider/provider.dart';

import '../components/card.dart';

class PageFive extends StatefulWidget {
  const PageFive({super.key});

  @override
  State<PageFive> createState() => _GradPageState();
}

class _GradPageState extends State<PageFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: navbarColor,
        title: const Center(
          child: Text(
            'การดูแลขั้นต่ําที่ควรจะได้รับ (5/8)',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // quiz
          Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                //color: Colors.deepOrange[100],
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'ความสามารถในการปฏิบัติกิจวัตรประจําวัน',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),

          // card
          Consumer<ScoreModel>(builder: (context, scoreModel, child) {
            return GradCard(content: FiveModel(choice: context.read<ScoreModel>().score.last));
          }),

          // button
          Container(
            margin: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Consumer<ScoreModel>(builder: (context, scoreModel, child) {
                  return GradButton(
                    choice: 1,
                    isChoosen: context.read<ScoreModel>().score.last == 1);
                }),
                Consumer<ScoreModel>(builder: (context, scoreModel, child) {
                  return GradButton(
                    choice: 2,
                    isChoosen: context.read<ScoreModel>().score.last == 2);
                }),
                Consumer<ScoreModel>(builder: (context, scoreModel, child) {
                  return GradButton(
                    choice: 3,
                    isChoosen: context.read<ScoreModel>().score.last == 3);
                }),
                Consumer<ScoreModel>(builder: (context, scoreModel, child) {
                  return GradButton(
                    choice: 4,
                    isChoosen: context.read<ScoreModel>().score.last == 4);
                }),
              ],
            ),
          ),
          //next button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PreviousButton(PreviousPage: const PageFour()),
              NextButton(nextPage: const PageSix()),
            ],
          ),
        ],
      ),
    );
  }
}
