import 'package:bmical/Widgets/Reusedcard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widgets/card_data.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

const Cardcolor = Color(0xff1d1e33);
const Bottomcolor = Color(0xffeb1555);

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'BMI CALCULATOR',
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    colour: Cardcolor,
                    cardchild: card_data(
                      text: 'MALE',
                      icons: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                      colour: Cardcolor,
                      cardchild: card_data(
                          text: 'FEMALE', icons: FontAwesomeIcons.venus)),
                ),
              ],
            )),
            Expanded(
              child: ReusedCard(
                colour: Cardcolor,
                cardchild: Container(),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusedCard(
                    colour: Cardcolor,
                    cardchild: Column(children: []),
                  ),
                ),
                Expanded(
                  child: ReusedCard(
                    colour: Cardcolor,
                    cardchild: Column(children: []),
                  ),
                ),
              ],
            )),
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Bottomcolor, borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ));
  }
}
