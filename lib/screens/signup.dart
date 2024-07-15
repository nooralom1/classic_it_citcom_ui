import 'package:citcom_ui/common/images.dart';
import 'package:citcom_ui/common/widget/color.dart';
import 'package:citcom_ui/common/widget/custmelevatedbutton.dart';
import 'package:flutter/material.dart';

import '../common/widget/CustomTextfeild.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                      child: const Icon(Icons.close)),
                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: Image.asset(NImages.sPlash),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Create a New account",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10,),
              const Text("First and last name"),
              const CustomTextField(
                prefixIcon: Icons.person,
                labelText: 'Type your name',
                hintText: 'Mr. Shovon',
              ),
              const SizedBox(height: 10,),
              const Text("Mobile Number"),
              const CustomTextField(
                prefixIcon: Icons.call,
                labelText: 'Enter your mobile number',
                hintText: '+8801xxxxxxxxxxx',
              ),
              const SizedBox(height: 10,),
              const Text("Create a password"),
              const CustomTextField(
                suffixIcon: Icons.remove_red_eye_outlined,
                prefixIcon: Icons.lock_outline,
                labelText: 'Password (8 to 32)',
                hintText: '*******',
              ),
              const SizedBox(height: 50,),
              SizedBox(
                width: double.maxFinite,
                height: 60,
                child: CustomElvtdButn(
                    buttonName: " Sign up",
                    onPressed: () {},
                    bgColor: NColor.red),
              ),
              const SizedBox(height: 50,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? Sign In"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}