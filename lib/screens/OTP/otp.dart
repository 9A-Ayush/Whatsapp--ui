import 'package:flutter/material.dart';
import 'package:whatapp/screens/Profile/profilescreen.dart';
import 'package:whatapp/widgits/uihelper.dart';

class OTPScreen extends StatelessWidget {
  final String phonenumber;

  OTPScreen({required this.phonenumber});
  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();
  TextEditingController otpController5 = TextEditingController();
  TextEditingController otpController6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Uihelper.CustomText(
          text: "Welcome to Whatsapp",
          height: 17,
          color: Colors.green,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Uihelper.CustomText(
              text: "You tried to register $phonenumber",
              height: 16,
            ),
            Uihelper.CustomText(
              text: "recently. Wait before requesting an SMS or a call",
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: "with your code", height: 16),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Uihelper.CustomText(
                        text: " Wrong number?",
                        height: 16,
                        color: Colors.green))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomContainer(otpController1),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otpController2),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otpController3),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otpController4),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otpController5),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainer(otpController6),
              ],
            ),
            SizedBox(height: 30,),
            Uihelper.CustomText(text: "Didn't receive Code ?", height:16,color: Colors.green)

          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(
          callback: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileScreen()));
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
