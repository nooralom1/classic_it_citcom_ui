import 'package:citcom_ui/common/images.dart';
import 'package:citcom_ui/common/color.dart';
import 'package:citcom_ui/common/widget/custmelevatedbutton.dart';
import 'package:citcom_ui/screens/authentication/signup.dart';
import 'package:flutter/material.dart';

import 'authentication/signin.dart';

class Entry extends StatefulWidget {
  const Entry({super.key});

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Image.asset(NImages.sPlash),
              const SizedBox(
                height: 10,
              ),
              Image.asset("assets/images/Online shopping-cuate.png"),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 60,
                child: CustomElvtdButn(
                  buttonName: "Already a Customer? Sign in",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  },
                  bgColor: NColor.red,
                  buttonNameColor: NColor.white,
                  buttonNameSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 60,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signup()));
                  },
                  child: const Text(
                    "New to zdrop? Create an Account",
                    style: TextStyle(color: Color(0xff121212), fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignIn()));
                  },
                  child: const Text(
                    "Skip sign in",
                    style: TextStyle(fontSize: 16, color: Color(0xff121212)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
