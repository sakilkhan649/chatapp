import 'package:chatapp/repository/screens/otp/otpscreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Appcolors.scaffolddark
            : Appcolors.scaffoldlight,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            UiHelper.CustomText(
              text: "Enter Your Phone Number",
              fontSize: 24,
              context: context,
              fontWeight: FontWeight.bold,
              fontFamily: "bold",
            ),
            SizedBox(height: 10),
            UiHelper.CustomText(
              text: "Please confirm your country code and enter",
              fontSize: 14,
              context: context,
            ),
            UiHelper.CustomText(
              text: "your phone number",
              fontSize: 14,
              context: context,
            ),
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: phoneController,
              text: "Phone Number",
              textinputtype: TextInputType.number,
              context: context,
              icondata: Icons.phone
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        buttonName: "Continue",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Otpscreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
