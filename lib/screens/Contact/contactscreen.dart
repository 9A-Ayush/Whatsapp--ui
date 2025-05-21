import 'package:flutter/material.dart';
import 'package:whatapp/widgits/uihelper.dart';

class ContactScreen extends StatelessWidget {
  final List<Map<String, dynamic>> addContent = [
    {
      "image": AssetImage("assets/images/person.png"),
      "name": "John",
      "statustime": "Busy",
    },
    {
      "image": AssetImage("assets/images/person2.png"),
      "name": "Liam",
      "statustime": "online",
    },
    {
      "image": AssetImage("assets/images/person3.png"),
      "name": "Emma",
      "statustime": "sleeping",
    },
    {
      "image": AssetImage("assets/images/person4.png"),
      "name": "Noah",
      "statustime": "working",
    },
    {
      "image": AssetImage("assets/images/person5.png"),
      "name": "Ava",
      "statustime": "offline",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Uihelper.CustomText(
            text: "Contact", height: 20, fontweight: FontWeight.bold, color: Colors.white),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: addContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: addContent[index]["image"],
                  ),
                  title: Uihelper.CustomText(
                    text: addContent[index]["name"].toString(),
                    height: 15,
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: Uihelper.CustomText(
                    text: addContent[index]["statustime"].toString(),
                    height: 13,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
