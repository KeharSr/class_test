import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String text;

  const MyButton({super.key, required this.text});

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool isVisible = true;
  bool isFirstClick = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (isFirstClick) {
              isFirstClick = false;
            } else {
              isVisible = false;
            }
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            isFirstClick
                ? const Color.fromARGB(98, 255, 158, 158)
                : Colors.blue,
          ),
        ),
        child: Text(widget.text),
      ),
    );
  }
}
