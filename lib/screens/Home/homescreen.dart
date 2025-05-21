import 'package:flutter/material.dart';
import 'package:whatapp/screens/Home/Calls/callsscreen.dart';
import 'package:whatapp/screens/Home/Camera/camerascreen.dart';
import 'package:whatapp/screens/Home/Chats/chatscreen.dart';
import 'package:whatapp/screens/Home/Status/statusscreen.dart';
import 'package:whatapp/widgits/uihelper.dart';

class HomeScreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 105,
          title: Uihelper.CustomText(
              text: "Whatsapp", height: 20, color: Colors.white),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.white)),

            ),
            IconButton(onPressed: (){}, icon:Icon(Icons.more_vert_sharp,color: Colors.white)),
          ],
        ),
        body: TabBarView(children: [
          CameraScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ]),
      ),
    );
  }
}
