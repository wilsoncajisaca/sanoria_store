import 'package:flutter/material.dart';

class ButtomCircularContainer extends StatelessWidget {
  final String imageAsset;
  final Function onPressed;
  const ButtomCircularContainer({this.imageAsset, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Colors.black12,
            width: 1,
          ),
        ),
        height: 65,
        width: 65,
        child: Image.asset(
          imageAsset,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
