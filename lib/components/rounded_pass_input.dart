import 'package:flutter/material.dart';
import 'package:kesehatan_app/components/input_container.dart';
import 'package:kesehatan_app/constant/color.dart';

class RoundedPassInput extends StatelessWidget {
  const RoundedPassInput({
    Key key,
    @required this.hint,
  }) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
      child : TextField(
        cursorColor: KsecondaryColor,
        obscureText: true,
        decoration: InputDecoration(
          icon : Icon(Icons.lock, color: KfourthColor),
          hintText: hint,
          border: InputBorder.none,
        )
      )
    );
  }
}