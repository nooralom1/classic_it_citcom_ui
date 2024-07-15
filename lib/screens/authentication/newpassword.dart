import 'package:citcom_ui/screens/authentication/signin.dart';
import 'package:flutter/material.dart';

import '../../common/color.dart';
import '../../common/images.dart';
import '../../common/widget/CustomTextfeild.dart';
import '../../common/widget/custmelevatedbutton.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                        height: 230,
                        child: Image.asset("assets/images/New password Screen illustration@2x.png")),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create a new password",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                 const Text(
                  "Create a password",
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
                  height: 16,
                ),
                const Text(
                  "Confirm password",
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
                  height: 40,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 60,
                  child: CustomElvtdButn(
                    buttonName: "Continue",
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    bgColor: NColor.red,
                    buttonNameColor: NColor.white,
                    buttonNameSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
