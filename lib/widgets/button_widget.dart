import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;

  const ButtonWidget({Key? key,
    required this.color,
    required this.text,
    required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height/12,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text(text, style: TextStyle(
            fontSize: 16, color: textColor, fontWeight: FontWeight.bold, fontFamily: 'Mulish'
        )),
      ),
    );
  }
}