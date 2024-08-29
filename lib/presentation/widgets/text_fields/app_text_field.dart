import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.onSubmitted,
    this.hintText,
    this.textInputAction,
    this.isPassword = false,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool isPassword;
  final void Function(String)? onSubmitted;
  final String? hintText;
  final TextInputAction? textInputAction;

  @override
  State<AppTextField> createState() => _AuthPageTextFieldState();
}

class _AuthPageTextFieldState extends State<AppTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
        style: TextStyle(
          color: HexColor('#3C3C3C'),
        ),
        controller: widget.controller,
        focusNode: widget.focusNode,
        obscureText: _obscureText,
        onSubmitted: widget.onSubmitted,
        decoration: InputDecoration(
          filled: true,
          fillColor: HexColor('#E2E9F2'),
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(8), // Adjust border radius as needed
            // Adjust border color and width as needed
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey[700]),
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: HexColor('#E2E9F2'),
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: _toggleObscureText,
                )
              : null,
        ),
        textInputAction: widget.textInputAction,
      ),
    );
  }
}
