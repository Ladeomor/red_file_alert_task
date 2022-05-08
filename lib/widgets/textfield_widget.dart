import 'package:flutter/material.dart';
import 'package:red_file_ui_task/constants.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final IconData icon;
  const TextFieldWidget({Key? key, required this.icon, required this.textEditingController, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      controller: textEditingController,
      style: textStyle,
      decoration: InputDecoration(
        suffixIcon: Icon(icon),
        suffixIconColor: Color(0xFFC2C9D1),
        hintText: hintText,
        hintStyle: hintTextStyle,
        focusColor: Color(0xFF363c38),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          const BorderSide(color: Color(0xFFC2C9D1), width: 1.0),
          borderRadius: BorderRadius.circular(10.0),

        ),
      ),
      validator: (value){
        if(value!.isEmpty){
          return 'Please complete required field';
        }return null;
      },
    );
  }
}
