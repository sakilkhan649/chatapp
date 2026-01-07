import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';
import '../widgets/uihelper.dart';

class Morescreen extends StatelessWidget {
  Morescreen({super.key});

  var arrMore = [
    {"icon": Icons.person, "text": "Account"},
    {"icon": CupertinoIcons.chat_bubble_fill, "text": "Chats"},
    {"icon": Icons.sunny, "text": "Appereance"},
    {"icon": Icons.notifications_off_outlined, "text": "Notification"},
    {"icon": Icons.privacy_tip, "text": "Privacy"},
    {"icon": Icons.folder, "text": "Data Usage"},
    {"icon": Icons.help, "text": "Help"},
    {"icon": Icons.email_outlined, "text": "Invite Your Friends"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Appcolors.scaffolddark
            : Appcolors.scaffoldlight,
        title: UiHelper.CustomText(
          text: "More",
          fontSize: 18,
          context: context,
          fontWeight: FontWeight.bold,
          fontFamily: "bold",
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgUrl: "darkprofile.png")
                : UiHelper.CustomImage(imgUrl: "lightprofile.png"),
            title: UiHelper.CustomText(
              text: "Sujal Dave",
              fontSize: 14,
              context: context,
              fontWeight: FontWeight.bold,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.forward),
            ),
            subtitle: UiHelper.CustomText(
              text: "+62 1309 - 1710 - 1920",
              fontSize: 14,
              context: context,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: arrMore.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    arrMore[index]["icon"] as IconData,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Appcolors.icondarkmode
                        : Appcolors.iconlightmode,
                  ),
                  title: UiHelper.CustomText(
                    text: arrMore[index]["text"].toString(),
                    fontSize: 14,
                    context: context,
                  ),
                  trailing: Icon(CupertinoIcons.forward),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
