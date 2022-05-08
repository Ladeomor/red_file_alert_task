import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:red_file_ui_task/screens/auth/verification_ui.dart';
import 'package:red_file_ui_task/widgets/button_widget.dart';
import 'package:red_file_ui_task/widgets/textfield_widget.dart';

import '../../constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id ='login_screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/Logo.png'),
              SizedBox(height: 10,),
              Text('Log In', style: heading,),
              SizedBox(height: 5,),
              Text('Hello, welcome back. Enter your credentials to open the red alert file.',  style: textStyle,textDirection: TextDirection.ltr,),
              SizedBox(height: 27,),
              Text('Username or Email', style: textStyle,),
              SizedBox(height: 5,),

              TextFieldWidget(icon: Icons.person, textEditingController: usernameController, hintText: 'Enter your username or email address'),
              SizedBox(height: 30,),
              Text('Password', style: textStyle,),
              SizedBox(height: 5,),

              TextFieldWidget(icon: Icons.visibility_off, textEditingController: passwordController, hintText: 'Enter your password'),
              Align(alignment: Alignment.bottomRight,child: Text('Forgot Password?', style: TextStyle(color: Color(0xFFFF5A5A), fontSize: 16, fontFamily: 'Mulish'),)),
              SizedBox(height: 100,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, VerificationScreen.id);
                },
                  child: ButtonWidget(color: Color(0xFFFF9A9A), text: 'Log In', textColor: Colors.white))

            ],
          ),
        ),
      ),

    );
  }
}
