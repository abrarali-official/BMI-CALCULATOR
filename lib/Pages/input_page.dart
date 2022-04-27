// ignore_for_file: deprecated_member_use

import 'package:bmical/Data/constant.dart';
import 'package:bmical/Widgets/Reusedcard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widgets/card_data.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  //  late Gender selectedGender;
  int height = 100;
  Color maleCardColor = kInActiveCardcolor;
  Color femaleCardColor = kInActiveCardcolor;
  void updatecolor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == kInActiveCardcolor) {
        maleCardColor = KActiveCardcolor;
        femaleCardColor = kInActiveCardcolor;
      } else {
        maleCardColor = kInActiveCardcolor;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColor == kInActiveCardcolor) {
        femaleCardColor = KActiveCardcolor;
        maleCardColor = kInActiveCardcolor;
      } else {
        femaleCardColor = kInActiveCardcolor;
      }
    }
  }

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
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    // colour: selectedGender == Gender.male
                    // ? ActiveCardcolor
                    // : InActiveCardcolor,
                    cardchild: card_data(
                      text: 'MALE',
                      icons: FontAwesomeIcons.mars,
                    ),
                    colour: maleCardColor,
                    onPress: () {
                      setState(() {
                        updatecolor(Gender.male);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    // colour: selectedGender == Gender.female
                    // ? ActiveCardcolor
                    // : InActiveCardcolor,
                    cardchild: card_data(
                        text: 'FEMALE', icons: FontAwesomeIcons.venus),
                    colour: femaleCardColor,
                    onPress: () {
                      setState(() {
                        updatecolor(Gender.female);
                      });
                    },
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusedCard(
                colour: KActiveCardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: kLabelTextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kNumberTextstyle),
                        Text(
                          "cm",
                          style: kLabelTextstyle,
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      min: 100,
                      max: 220,
                      activeColor: kSlidercolor,
                      inactiveColor: kSliderInactive,
                    )
                  ],
                ),
                onPress: () {},
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    colour: KActiveCardcolor,
                    cardchild: Column(children: []),
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    colour: KActiveCardcolor,
                    cardchild: Column(children: []),
                    onPress: () {},
                  ),
                ),
              ],
            )),
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: kBottomcontainerheight,
              decoration: BoxDecoration(
                  color: kBottomcolor, borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ));
  }
}
