import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';

class RedFileScreen extends StatefulWidget {
  static const String id = 'redfile_screen';

  const RedFileScreen({Key? key}) : super(key: key);

  @override
  _RedFileScreenState createState() => _RedFileScreenState();
}

class _RedFileScreenState extends State<RedFileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 221,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black,
                    Colors.black45,
                  ]),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Rectangle 1.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Color(0xFFFF5A5A),
                        size: 20,
                      ),
                      Text('10',
                          style: TextStyle(
                              color: Color(0xFFFF5A5A), fontSize: 10)),
                      SizedBox(
                        width:25,
                      ),
                      Icon(
                        Icons.comment_outlined,
                        color: Colors.white70,
                        size: 20,
                      ),
                      Text('7',
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                      SizedBox(
                        width: 230,
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  Text(
                    'Generation Tank For New Beasts',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Mulish',
                        color: Color(0xFF092C4C),
                        fontSize: 20),
                  ),
                  Text(
                    'An urprising of Terrific Mobile Devs',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Mulish',
                        color: Color(0xFF092C4C),
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Column(
                      children: [
                        Text(
                          'AUSA Angela Valdes',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Mulish',
                              color: Color(0xFFFF5A5A),
                              fontSize: 10),
                        ),
                        Text(
                          'Aril 29, 2022| 04:00',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Mulish',
                              color: Color(0xFF969696),
                              fontSize: 10),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Container(
                      width: 50,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xFF0EB631), width: 1),
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Soft',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF0EB631),
                              fontSize: 12,
                              fontFamily: 'Mulish'),
                        ),
                      ),
                    ),
                  ]),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFE8E9ED),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'L',
                            style: TextStyle(
                                color: Color(0xFFFF5A5A),
                                fontSize: 38,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Mulish'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'orem ipsum dolor sit amet, consectetur',
                            style: redFileSubtitleText,
                          ),
                           Text(
                        'adipiscing elit. Consequat in pulvinar \npurus enim egestas accumsan. Vulputate \nlacinia placerat enim, praesent sed. Feugiat ',
                        style: redFileSubtitleText,
                      ),
                        ],
                      ),
                     
                      Text(
                        'nibh sapien ipsum cursus lacinia. Eget est dui id odio placerat libero massa. Nulla faucibus in in tempor quis orci quis nec. ',
                        style: redFileSubtitleText,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Urna faucibus fermentum porta nulla eu. Quis facilisis est, pellentesque ultricies at iaculis. \nRisus tincidunt et facilisis sed enim amet, \naugue. Neque lectus eget mi eget turpis \ntincidunt dictum.',
                        style: redFileSubtitleText,
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFE8E9ED),
                  ),
                  Align(
                    alignment: FractionalOffset.bottomLeft,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Flexible(
                            child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Type your comment here...',
                            hintStyle: hintTextStyleTwo,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xFFE2E2E2), width: 1.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ))
                      ],
                    ),
                  )
                ])),
          ],
        ),
      ),
    );
  }
}
