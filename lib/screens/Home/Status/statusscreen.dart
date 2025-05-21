import 'package:flutter/material.dart';
import 'package:whatapp/widgits/uihelper.dart';

class StatusScreen extends StatelessWidget {
  final List<Map<String, dynamic>> statusContent = [
    {
      "image": AssetImage("assets/images/person.png"),
      "name": "John",
      "statustime": "15 min ago",
    },
    {
      "image": AssetImage("assets/images/person2.png"),
      "name": "Liam",
      "statustime": "45 min ago",
    },
    {
      "image": AssetImage("assets/images/person3.png"),
      "name": "Emma",
      "statustime": "1 hour ago",
    },
    {
      "image": AssetImage("assets/images/person4.png"),
      "name": "Noah",
      "statustime": "2 hours ago",
    },
    {
      "image": AssetImage("assets/images/person5.png"),
      "name": "Ava",
      "statustime": "3 hours ago",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 30),
              Uihelper.CustomText(
                text: "Status",
                height: 20,
                fontweight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(3), // Space for border
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 2), // Green border
                    ),
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/person.png"),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: const Center(
                        child: Icon(Icons.add, color: Colors.white, size: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: Uihelper.CustomText(
              text: "My Status",
              height: 15,
              fontweight: FontWeight.bold,
            ),
            subtitle: Uihelper.CustomText(
              text: "Tap to add status update",
              height: 13,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          const Divider(thickness: 1),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Uihelper.CustomText(text: "Recent updates", height: 15),
                const Icon(Icons.arrow_drop_down, color: Colors.grey, size: 20),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: statusContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(3), // Space for border
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 2), // Green border
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: statusContent[index]["image"],
                    ),
                  ),
                  title: Uihelper.CustomText(
                    text: statusContent[index]["name"].toString(),
                    height: 15,
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: Uihelper.CustomText(
                    text: statusContent[index]["statustime"].toString(),
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
