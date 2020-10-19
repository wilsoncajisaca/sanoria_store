import 'package:flutter/material.dart';

class StikerSize extends StatelessWidget {
  final String weight;
  final Color backgraoundColor;
  final Color textColor;

  const StikerSize({
    @required this.weight,
    @required this.backgraoundColor,
    @required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgraoundColor,
      ),
      child: Text(
        weight,
        style: TextStyle(color: textColor, fontSize: 12),
      ),
    );
  }
}
