import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starter_app/app/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.title = 'Sign in',
      this.onPressed,
      this.backgroundColor});

  final String? title;
  final void Function()? onPressed;
  final WidgetStateProperty<Color?>? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(
            HexColor('#050b14'),
          ),
          backgroundColor: backgroundColor ??
              WidgetStateProperty.all(primaryColor),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(color: Colors.black),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          '$title',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
