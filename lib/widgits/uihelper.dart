import 'package:flutter/material.dart';

class Uihelper {
  static CustomButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 35,
      width: 350,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          child: Text(
            buttonname,
            style: TextStyle(color: Colors.white, fontSize: 14),
          )),
    );
  }

  static CustomText(
      {required String text,
      required double height,
      Color? color,
      FontWeight? fontweight}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: height,
          color: color ?? Colors.black,
          fontWeight: fontweight),
    );
  }

  static CustomContainer(TextEditingController controller) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        maxLength: 1, // Restricting to only one character input
        keyboardType: TextInputType.text, // You can set this to TextInputType.number if needed
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          counterText: '', // Hiding the counter text
        ),
      ),
    );
  }

}
