import 'package:flutter/material.dart';
import 'package:whatapp/screens/Login/loginscreen.dart';
import 'package:whatapp/widgits/uihelper.dart';

class OnBoardingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/circle.png",
            height: 200,
            width: 200 ,),
            SizedBox(height: 20,),
            Uihelper.CustomText(text: "Welcome to Whatsapp", height: 20,color :Colors.black,fontweight: FontWeight.bold),
           SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text:" Read our ", height:16),
                Uihelper.CustomText(text:" Privacy Policy. ", height:18, color: Colors.blue),
                Uihelper.CustomText(text:" Tap ' Agree and Continue' ", height:16),

              ],
            ),
            SizedBox(height:05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text:"to accept the ", height:16),
                Uihelper.CustomText(text:"Terms of Services", height:18, color: Colors.blue),

              ],
            ),
            SizedBox(height: 200,),
          ],
        )
      ),
      floatingActionButton: Uihelper.CustomButton(
          callback: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
          }, buttonname: "Agree and continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }


}