// ignore_for_file: deprecated_member_use

import 'package:bmical/Data/constant.dart';
import 'package:bmical/Widgets/Reusedcard.dart';
import 'package:bmical/Widgets/buttom_button.dart';
import 'package:flutter/material.dart';

class Result_page extends StatefulWidget {
  Result_page({Key? key}) : super(key: key);

  @override
  State<Result_page> createState() => _Result_pageState();
}

class _Result_pageState extends State<Result_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultPageTextStyle,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusedCard(
                  colour: KActiveCardcolor,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Normal',
                        style: kResulttextStyle,
                      ),
                      Text(
                        '14.2',
                        style: kBMITextstyle,
                      ),
                      Text(
                        'Your BMI result is quite low, you should eat more!',
                        textAlign: TextAlign.center,
                        style: kbodyTextstyle,
                      )
                    ],
                  ),
                  onPress: () {})),
          // FlatButton(
          //     onPressed: () {},
          // child:
          Buttom_Button(
            buttontext: 'Re-Calculate',
            onpress: () {
              Navigator.pop(context);
            },
            // )
          )
        ],
      ),
    );
  }
}
