import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';
import '../widgets/uihelper.dart';

class Contactsscreen extends StatelessWidget {
  Contactsscreen({super.key});

  TextEditingController searchController = TextEditingController();

  var arrContacts = [
    {
      "img": "image1.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday",
    },
    {"img": "image2.png", "name": "Erlan Sadewa", "lastseen": "Online"},
    {
      "img": "image3.png",
      "name": "Midala Huera",
      "lastseen": "Last seen 3 hours ago",
    },
    {"img": "image4.png", "name": "Nafisa Gitari", "lastseen": "Online"},
    {"img": "image1.png", "name": "Raki Devon", "lastseen": "Online"},
    {
      "img": "image5.png",
      "name": "Salsabila Akira",
      "lastseen": "Last seen 30 minutes ago",
    },
    {
      "img": "image6.png",
      "name": "Salsabila Akira",
      "lastseen": "Last seen 30 minutes ago",
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
          text: "Contacts",
          fontSize: 18,
          context: context,
          fontWeight: FontWeight.bold,
          fontFamily: "bold",
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: searchController,
              text: "Search",
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
                        imgUrl: arrContacts[index]["img"].toString(),
                      ),
                      title: UiHelper.CustomText(
                        text: arrContacts[index]["name"].toString(),
                        fontSize: 14,
                        context: context,
                        fontWeight: FontWeight.w600,
                      ),
                      subtitle: UiHelper.CustomText(
                        text: arrContacts[index]["lastseen"].toString(),
                        fontSize: 12,
                        context: context,
                        color: Color(0XFFADB5BD),
                      ),
                    ),
                  );
                },
                itemCount: arrContacts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
