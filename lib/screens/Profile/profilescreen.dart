import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatapp/screens/Home/homescreen.dart';
import 'package:whatapp/widgits/uihelper.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Uihelper.CustomText(
                text: "Profile info", height: 20, color: const Color(0XFF00A884), fontweight: FontWeight.bold),
            const SizedBox(height: 30),
            Uihelper.CustomText(text: "Please provide your name and an optional", height: 14),
            Uihelper.CustomText(text: "profile photo", height: 14),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => _openBottomSheet(context),
              child: pickedImage == null
                  ? CircleAvatar(
                radius: 80,
                backgroundColor: const Color(0XFFD9D9D9),
                child: Image.asset("assets/images/camera.png", height: 50, fit: BoxFit.cover),
              )
                  : CircleAvatar(radius: 80, backgroundImage: FileImage(pickedImage!)),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: "Type your name here",
                      hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                      border: UnderlineInputBorder(borderSide: BorderSide(color: Color(0XFF05AA82))),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0XFF05AA82))),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0XFF05AA82))),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Image.asset("assets/images/Emoji.png", height: 30, width: 30),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
        callback: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreeen())),
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () => _pickImage(ImageSource.camera),
                    icon: const Icon(Icons.camera_alt, size: 80, color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: () => _pickImage(ImageSource.gallery),
                    icon: const Icon(Icons.image, size: 80, color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? photo = await ImagePicker().pickImage(source: source);
      if (photo == null) return;
      setState(() => pickedImage = File(photo.path));
      Navigator.pop(context); // Close the bottom sheet after picking an image
    } catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: ${ex.toString()}"), backgroundColor: const Color(0XFF00A884)),
      );
    }
  }
}

