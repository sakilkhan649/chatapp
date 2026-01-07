import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';
import '../widgets/uihelper.dart';

class Chatsscreen extends StatelessWidget {
  Chatsscreen({super.key});

  TextEditingController searchController = TextEditingController();

  var arrChats = [
    {
      "img": "image10.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday",
      "msgcount": "1",
      "date": "7/4",
    },
    {
      "img": "image11.png",
      "name": "Erlan Sadewa",
      "lastseen": "Online",
      "msgcount": "2",
      "date": "4/4",
    },
    {
      "img": "image12.png",
      "name": "Midala Huera",
      "lastseen": "Last seen 3 hours ago",
      "msgcount": "3",
      "date": "7/9",
    },
    {
      "img": "image4.png",
      "name": "Nafisa Gitari",
      "lastseen": "Online",
      "msgcount": "4",
      "date": "8/4",
    },
    {
      "img": "image1.png",
      "name": "Raki Devon",
      "lastseen": "Online",
      "msgcount": "5",
      "date": "1/4",
    },
    {
      "img": "image5.png",
      "name": "Salsabila Akira",
      "lastseen": "Last seen 30 minutes ago",
      "msgcount": "6",
      "date": "4/4",
    },
    {
      "img": "image6.png",
      "name": "Salsabila Akira",
      "lastseen": "Last seen 30 minutes ago",
      "msgcount": "7",
      "date": "4/4",
    },
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
          text: "Chats",
          fontSize: 18,
          context: context,
          fontWeight: FontWeight.bold,
          fontFamily: "bold",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mark_chat_unread_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomImage(imgUrl: "image7.png"),
              SizedBox(width: 20),
              UiHelper.CustomImage(imgUrl: "image8.png"),
              SizedBox(width: 20),
              UiHelper.CustomImage(imgUrl: "image9.png"),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              SizedBox(width: 25),
              UiHelper.CustomText(
                text: "Your Story",
                fontSize: 10,
                context: context,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(width: 25),
              UiHelper.CustomText(
                text: "Midala Hu...",
                fontSize: 10,
                context: context,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(width: 25),
              UiHelper.CustomText(
                text: "Salsabila...",
                fontSize: 10,
                context: context,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          Divider(color: Color(0xFFEDEDED)),
          SizedBox(height: 20),
          UiHelper.CustomTextField(
            controller: searchController,
            text: "Placeholder",
            textinputtype: TextInputType.name,
            context: context,
            icondata: Icons.search,
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: UiHelper.CustomImage(
                      imgUrl: arrChats[index]["img"].toString(),
                    ),
                    title: UiHelper.CustomText(
                      text: arrChats[index]["name"].toString(),
                      fontSize: 14,
                      context: context,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitle: UiHelper.CustomText(
                      text: arrChats[index]["lastseen"].toString(),
                      fontSize: 12,
                      context: context,
                      color: Color(0XFFADB5BD),
                    ),
                    trailing: Column(
                      mainAxisAlignment: .center,
                      children: [
                        UiHelper.CustomText(
                          text: arrChats[index]["date"].toString(),
                          fontSize: 10,
                          context: context,
                          color: Color(0xFFA4A4A4),
                        ),
                        SizedBox(height: 5),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Color(0xFFD2D5F9),
                          child: UiHelper.CustomText(
                            text: arrChats[index]["msgcount"].toString(),
                            fontSize: 10,
                            context: context,
                            color: Color(0XFFADB5BD),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: arrChats.length,
            ),
          ),
        ],
      ),
    );
  }
}
