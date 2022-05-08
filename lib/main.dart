import 'package:flutter/material.dart';
import 'package:red_file_ui_task/screens/auth/login_ui.dart';
import 'package:red_file_ui_task/screens/auth/verification_ui.dart';
import 'package:red_file_ui_task/screens/instruction_screen.dart';

import 'screens/red_file_screen.dart';

void main() {
  runApp(const RedFileAlert());
}

class RedFileAlert extends StatelessWidget {
  const RedFileAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Red File Alert',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey,
      ),
      initialRoute: InstructionScreen.id,
      routes: {
        InstructionScreen.id : (context) => InstructionScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        VerificationScreen.id: (context) => VerificationScreen(),
        RedFileScreen.id :(context) => RedFileScreen(),
      },
    );
  }
}
