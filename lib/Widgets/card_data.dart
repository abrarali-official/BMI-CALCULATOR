import 'package:flutter/material.dart';

class card_data extends StatelessWidget {
  const card_data({
    Key? key,
    required this.text,
    required this.icons,
  }) : super(key: key);
  final String text;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icons,
        size: 80,
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        text,
        style: TextStyle(fontSize: 18, color: Color(0xff8d8e98)),
      )
    ]);
  }
}
