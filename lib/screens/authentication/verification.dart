import 'package:citcom_ui/screens/authentication/newpassword.dart';
import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import '../../common/color.dart';
import '../../common/images.dart';
import '../../common/widget/CustomTextfeild.dart';
import '../../common/widget/custmelevatedbutton.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back)),
                    Padding(
                      padding: const EdgeInsets.only(left: 65),
                      child: Image.asset(NImages.sPlash),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 169,
                      width: 182,
                      child: Image.asset(
                          "assets/images/Creat New Password illustration@2x.png"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Verification Code",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "verification Code",
                    ),
                    Text(
                      "Resend in 59s",style: TextStyle(color: Color(NColor.red)),
                    ),
                  ],
                ),
        SizedBox(height: 20,),
        OtpPinField(
          key: _otpPinFieldController,
          autoFillEnable: false,
          textInputAction: TextInputAction.done,
          onSubmit: (text) {
            print('Entered pin is $text');
          },
          onChange: (text) {
            print('Enter on change pin is $text');
          },
          onCodeChanged: (code) {
            print('onCodeChanged  is $code');
          },
          otpPinFieldStyle: OtpPinFieldStyle(
            activeFieldBorderGradient: LinearGradient(colors: [Colors.black, Colors.redAccent]),
            filledFieldBorderGradient: LinearGradient(colors: [Colors.green, Colors.tealAccent]),
            defaultFieldBorderGradient: LinearGradient(colors: [Colors.orange, Colors.brown]),
          )
        ),
                SizedBox(height: 20,),
                Text(
                  "Verification Code has been sent",
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 60,
                  child: CustomElvtdButn(
                    buttonName: "Next",
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewPassword()));
                    },
                    bgColor: NColor.red,
                    buttonNameColor: NColor.white,
                    buttonNameSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
