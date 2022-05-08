import 'package:flutter/material.dart';
import 'package:red_file_ui_task/screens/auth/login_ui.dart';

import '../constants.dart';

class InstructionScreen extends StatefulWidget {
  static const String id ='instruction_screen';

  const InstructionScreen({Key? key}) : super(key: key);

  @override
  State<InstructionScreen> createState() => _InstructionScreenState();
}

class _InstructionScreenState extends State<InstructionScreen> {
  @override
   void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToLoginScreen();
  }
  _navigateToLoginScreen()async{
    await Future.delayed(Duration(milliseconds: 3000), (){});
    Navigator.pushNamed(context,LoginScreen.id);

  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: instructionPageDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('INSTRUCTIONS:', style: instructionTextStyle,),
               Image.asset('assets/images/Logo.png')
             ],
           ),
            SizedBox(height: 25,),
            Text('This is a simple 4-screen app to view\n details of a ‘red file’.', style: instructionTextStyle,),
            SizedBox(height: 21,),
            Text('User logs in, verifies themselves with a\n 4-digit OTP, and can see the file.', style: instructionTextStyle,),
            SizedBox(height: 21,),
            Text(' **',style: instructionTextStyle,),
            SizedBox(height: 21,),
            Text('Approach this as you would a client project.', style: instructionTextStyle,),
            SizedBox(height: 21,),
            Text('Simulate all backend portions of the \n app. That is make fake delays and return responses.', style: instructionTextStyle,),
            SizedBox(height: 21,),
            Text('When submitting, provide login credentials and OTP that would work for success or failure on the simulated backend. (Meaning handle wrong credential situation)', style: instructionTextStyle,),
            SizedBox(height: 21,),
            Text('NOTE: This isn’t just a UI task. It is a task to see your general approach to building apps, speed, code patterns, and the other things mentioned in text conversation with you earlier.', style: instructionTextStyle,),
            SizedBox(height: 21,),
            Text('Can’t wait to read the spells you’ll write!', style: instructionTextStyle,),




          ],
        ),
      ),
    );
  }
}
