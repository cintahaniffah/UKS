import 'package:flutter/material.dart';
import 'package:kesehatan_app/components/input_container.dart';
import 'package:kesehatan_app/constant/color.dart';

class RoundedInput extends StatelessWidget {
  const RoundedInput({
    Key key,
    @required this.icon,
    @required this.hint
  }) : super(key: key);

  final IconData icon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
      child : TextField(
        cursorColor: KsecondaryColor,
        decoration: InputDecoration(
          icon : Icon(icon, color: KfourthColor),
          hintText: hint,
          border: InputBorder.none,
        )
      )
    );
  }
}
