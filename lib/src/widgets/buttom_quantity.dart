import 'package:flutter/material.dart';

class ButtomQuantity extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final double padding;

  const ButtomQuantity({
    Key key,
    @required this.backgroundColor,
    @required this.icon,
    this.padding = 0.0,
    this.iconColor = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: this.backgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1,
            offset: Offset(0.0, 0.0),
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        this.icon,
        color: this.iconColor,
        size: 28,
      ),
    );
  }
}
