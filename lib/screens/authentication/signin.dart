import 'package:citcom_ui/common/images.dart';
import 'package:citcom_ui/screens/authentication/forgetpassword.dart';
import 'package:citcom_ui/screens/authentication/signup.dart';
import 'package:citcom_ui/screens/homepage.dart';
import 'package:flutter/material.dart';

import '../../common/color.dart';
import '../../common/widget/CustomTextfeild.dart';
import '../../common/widget/custmelevatedbutton.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.close)),
                    const Text(
                      "FAQ / HELP",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(NImages.sPlash),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Enter Mobile Number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                  prefixIcon: Icons.call,
                  labelText: 'Enter your mobile number',
                  hintText: '+8801xxxxxxxxxxx',
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Create a password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetPassword()));
                      },
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => ForgetPassword()));
                        },
                        child: const Text(
                          "Forget Password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(NColor.red)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(
                  suffixIcon: Icons.remove_red_eye_outlined,
                  prefixIcon: Icons.lock_outline,
                  labelText: 'Password (8 to 32)',
                  hintText: '*******',
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 60,
                  child: CustomElvtdButn(
                    buttonName: " Sign In",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    bgColor: NColor.red,
                    buttonNameColor: NColor.white,
                    buttonNameSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Signup()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(NColor.red)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
