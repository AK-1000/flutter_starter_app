import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starter_app/app/constants.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.onSubmitted,
    this.hintText,
    this.textInputAction,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final void Function(String)? onSubmitted;
  final String? hintText;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400, // Adjust color as needed
            spreadRadius: 2, // Adjust spread radius as needed
            blurRadius: 7, // Adjust blur radius as needed
            offset: const Offset(0, 4), // Changes position of shadow
          ),
        ],
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.top,
        style: TextStyle(
          color: HexColor('#3C3C3C'),
        ),
        controller: controller,
        focusNode: focusNode,
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          filled: true,
          fillColor: HexColor('#E2E9F2'),
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(8), // Adjust border radius as needed
            // Adjust border color and width as needed
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[700]),
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: HexColor('#E2E9F2'),
            ),
          ),
          prefixIcon: Container(
            margin: EdgeInsets.symmetric(horizontal: oneW(context)),
            child: SvgPicture.asset(
              'assets/images/svg/lb.svg',
              width: 24,
              height: 28,
            ),
          ),
        ),
        textInputAction: textInputAction,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
