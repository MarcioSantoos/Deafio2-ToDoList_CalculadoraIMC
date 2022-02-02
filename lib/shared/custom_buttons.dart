import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final context;
  final String text;
  final Color primary;
  final pressed;
  const CustomButtons({
    Key? key,
    required this.context,
    required this.text,
    required this.primary, 
    required this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
    );
  }

}
