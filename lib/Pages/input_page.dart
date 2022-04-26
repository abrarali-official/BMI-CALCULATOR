import 'package:bmical/Widgets/Reusedcard.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      colour: Color(0xff1d1e33),
                    ),
                  ),
                  Expanded(
                    child: ReusedCard(
                      colour: Color(0xff1d1e33),
                    ),
                  ),
                ],
              )),
              Expanded(
                child: ReusedCard(
                  colour: Color(0xff1d1e33),
                ),
              ),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: ReusedCard(
                      colour: Color(0xff1d1e33),
                    ),
                  ),
                  Expanded(
                    child: ReusedCard(
                      colour: Color(0xff1d1e33),
                    ),
                  ),
                ],
              )),
            ],
          )),
    );
  }
}
