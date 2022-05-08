import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:red_file_ui_task/screens/red_file_screen.dart';
import 'package:red_file_ui_task/widgets/button_widget.dart';

import '../../constants.dart';
import '../../widgets/box_widget.dart';

class VerificationScreen extends StatefulWidget {
  static const String id = 'verification_screen';

  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  var field1 = TextEditingController();
  var field2 = TextEditingController();
  var field3 = TextEditingController();
  var field4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 68, left: 20, right: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back, color: Colors.black)),
              SizedBox(height: 16),
              Text('Verification Code',
                  style: TextStyle(
                      color: Color(0xFF222831),
                      fontSize: 26.4,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700)),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Please enter the verification code sent to '),
                    Row(
                      children: [
                        Text(
                          '+234812',
                          style: subtitleTextStyle,
                        ),
                        Text('xxxxx',
                            style: TextStyle(
                                color: Color(0xFF222831),
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.bold)),
                        Text(
                          '9',
                          style: subtitleTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 45.21,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 40,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.phone,
                                controller: field1,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF222831), width: 5.0),
                                )),
                                textInputAction: TextInputAction.next,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    node.nextFocus();
                                  }
                                }),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.phone,
                                controller: field2,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF222831), width: 5.0),
                                )),
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    node.nextFocus();
                                  }
                                }),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.phone,
                                controller: field3,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF222831), width: 5.0),
                                )),
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    node.nextFocus();
                                  }
                                }),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: TextFormField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.phone,
                                controller: field4,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF222831), width: 5.0),
                                )),
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    if (field1.text.length == 1) {
                                      if (field2.text.length == 1) {
                                        if (field3.text.length == 1) {
                                          if (field4.text.length == 1) {}
                                        }
                                      }
                                    }
                                  } else {}
                                }),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          enableDrag: false,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                            top: Radius.circular(2),
                          )),
                          context: context,
                          builder: (context) => BackdropFilter(
                            child: buildSheet(),
                            filter: ImageFilter.blur(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 50),
                        child: ButtonWidget(
                            color: Color(0xFFFF9A9A),
                            text: 'Verify now',
                            textColor: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        children: [
                          Text(
                            'Didnt receive the code?',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                fontFamily: 'Mulish'),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Resend',
                            style: TextStyle(
                                color: Color(0xFFFF9A9A),
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                fontFamily: 'Mulish'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ])));
  }

  Widget buildSheet() => Padding(
        padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/fire-cracker.png'),
              SizedBox(
                height: 17,
              ),
              Text(
                'Account Verified',
                style: TextStyle(
                    color: Color(0xFF092C4C),
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                'Your account has been successfully verified',
              ),
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RedFileScreen.id);
                  },
                  child: ButtonWidget(
                      color: Color(0xFFFF9A9A),
                      text: 'Open file',
                      textColor: Colors.white))
            ],
          ),
        ),
      );
}
