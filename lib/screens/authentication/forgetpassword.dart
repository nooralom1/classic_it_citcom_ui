import 'package:citcom_ui/screens/authentication/signup.dart';
import 'package:citcom_ui/screens/authentication/verification.dart';
import 'package:flutter/material.dart';

import '../../common/color.dart';
import '../../common/images.dart';
import '../../common/widget/CustomTextfeild.dart';
import '../../common/widget/custmelevatedbutton.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                    Image.asset(
                        "assets/images/Forgot password-cuate (1) 1.png"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Forget Password?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Don’t worry we will sand an OTP to your",
                ),
                Text(
                  " registered mobile number",
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "Enter Mobile Number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                  prefixIcon: Icons.call,
                  labelText: 'Enter your mobile number',
                  hintText: '+8801xxxxxxxxxxx',
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 60,
                  child: CustomElvtdButn(
                    buttonName: "Continue",
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Verification()));
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
