import 'dart:ui';

import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {

  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFF222831), width: 2),
        borderRadius: BorderRadius.all(Radius.circular(12.0))
      ),
    );
  }
}
