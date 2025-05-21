import 'package:flutter/material.dart';
import 'package:whatapp/widgits/uihelper.dart';

class CallsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> callContent = [
    {
      "image": AssetImage("assets/images/person.png"),
      "name": "John",
      "calltime": "15 min ago",
    },
    {
      "image": AssetImage("assets/images/person2.png"),
      "name": "Liam",
      "calltime": "45 min ago",
    },
    {
      "image": AssetImage("assets/images/person3.png"),
      "name": "Emma",
      "calltime": "1 hour ago",
    },
    {
      "image": AssetImage("assets/images/person4.png"),
      "name": "Noah",
      "calltime": "2 hours ago",
    },
    {
      "image": AssetImage("assets/images/person5.png"),
      "name": "Ava",
      "calltime": "3 hours ago",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Uihelper.CustomText(text: "Recent calls", height: 15),
                const Icon(Icons.arrow_drop_down, color: Colors.grey, size: 20),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: callContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: callContent[index]["image"],
                  ),
                  title: Uihelper.CustomText(
                    text: callContent[index]["name"].toString(),
                    height: 15,
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: Uihelper.CustomText(
                    text: callContent[index]["calltime"].toString(),
                    height: 13,
                    color: Colors.grey,
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.call, color: Colors.green),
                    onPressed: () {
                      // Handle call action here
                    },
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
