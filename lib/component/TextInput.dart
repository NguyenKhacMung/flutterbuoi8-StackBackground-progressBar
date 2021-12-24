import 'package:flutter/material.dart';
import 'package:session8/constants.dart';

class Input extends StatefulWidget {
  const Input({
    Key? key,
    this.obscureText = false,
    required this.hintText,
    this.textAlign = TextAlign.left,
    this.color = const Color(0xffF9F9F9),
  }) : super(key: key);
  final bool obscureText;
  final String hintText;
  final TextAlign textAlign;
  final Color color;
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: widget.textAlign,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.color,
        hoverColor: const Color(0xfff8f8f8),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: const Color(0xFF887E7E).withOpacity(0.87),
          ),
        ),
        hintText: widget.hintText,
        hintStyle: hinttext,
      ),
      style: hinttext,
    );
  }
}
