import 'package:flutter/material.dart';
import 'package:whatapp/screens/Contact/contactscreen.dart';
import 'package:whatapp/widgits/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> arrContent = [
    {
      "image": AssetImage("assets/images/person.png"),
      "name": "John",
      "lastmsg": "Hello",
      "time": "05:45 AM",
      "msg": "4"
    },
    {
      "image": AssetImage("assets/images/person2.png"),
      "name": "Liam",
      "lastmsg": "Let's meet up later.",
      "time": "07:15 AM",
      "msg": "2"
    },
    {
      "image": AssetImage("assets/images/person3.png"),
      "name": "Emma",
      "lastmsg": "Did you get my email?",
      "time": "08:50 AM",
      "msg": "1"
    },
    {
      "image": AssetImage("assets/images/person4.png"),
      "name": "Noah",
      "lastmsg": "Good morning! Have a great day.",
      "time": "09:10 AM",
      "msg": "5"
    },
    {
      "image": AssetImage("assets/images/person5.png"),
      "name": "Ava",
      "lastmsg": "Call me when you're free.",
      "time": "10:20 AM",
      "msg": "6"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: arrContent[index]["image"], // Fixed
                  ),
                  title: Uihelper.CustomText(
                    text: arrContent[index]["name"].toString(),fontweight: FontWeight.bold,
                    height: 15,
                    color: Colors.black,
                  ),
                  subtitle: Uihelper.CustomText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 13,
                    color: Colors.grey,
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Uihelper.CustomText(
                        text: arrContent[index]["time"].toString(),
                        height: 12,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 5),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.green,
                        child: Uihelper.CustomText(
                          text: arrContent[index]["msg"].toString(),
                          height: 12,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactScreen()));

        },
        child: CircleAvatar(

          radius: 30,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
