import 'package:flutter/material.dart';

class InputTaskWidget extends StatelessWidget {
  final String labelText;
  final String textButton;
  final TextEditingController textController;
  final Function()? onPressed;
  const InputTaskWidget({
    Key? key,
    required this.textController,
    this.onPressed,
    required this.labelText,
    required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: textController,
            decoration: InputDecoration(
              labelText: labelText,
            ),
          ),
        ),
        SizedBox(
          width: 74,
          height: 37,
          child: TextButton(
            onPressed: onPressed,
            child: Text(textButton),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: const Color(0xFFC1007E),
            ),
          ),
        ),
      ],
    );
  }
}
