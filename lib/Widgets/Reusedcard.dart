import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  const ReusedCard({
    Key? key,
    required this.colour,
    required this.cardchild,
  }) : super(key: key);

  final Color colour;
  final Widget cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      child: cardchild,
    );
  }
}
