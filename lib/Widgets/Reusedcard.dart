import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  const ReusedCard({
    Key? key,
    required this.colour,
  }) : super(key: key);
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
