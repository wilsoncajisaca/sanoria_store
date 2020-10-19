import 'package:flutter/material.dart';
import 'package:sanoria_store/src/commons/colors.dart';

class InputText extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final bool obscureText;
  final TextEditingController ctrlName;

  const InputText({
    this.hintText,
    this.inputType,
    this.obscureText = false,
    this.ctrlName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: principalColor,
          width: 1,
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: this.ctrlName,
        keyboardType: this.inputType,
        obscureText: this.obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: this.hintText,
        ),
      ),
    );
  }
}
