import 'package:chatapp/repository/screens/otp/otpscreen.dart';
import 'package:chatapp/repository/screens/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';
import '../bottomnav/bottomnavigationscreen.dart';

class Profilescreen extends StatelessWidget {
  Profilescreen({super.key});

  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();

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
        title: UiHelper.CustomText(
          text: "Your Profile",
          fontSize: 18,
          context: context,
          fontWeight: FontWeight.bold,
          fontFamily: "bold",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgUrl: "darkprofile.png")
                : UiHelper.CustomImage(imgUrl: "lightprofile.png"),
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: firstnameController,
              text: "First Name (Required)",
              textinputtype: TextInputType.name,
              context: context,
              icondata: Icons.person
            ),
            SizedBox(height: 10),
            UiHelper.CustomTextField(
              controller: lastnameController,
              text: "Last Name (Optional)",
              textinputtype: TextInputType.name,
              context: context,
              icondata: CupertinoIcons.person_2
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        buttonName: "Save",
        callback: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Bottomnavigationscreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
