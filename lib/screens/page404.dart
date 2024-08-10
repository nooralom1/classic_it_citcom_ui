import 'package:flutter/material.dart';

class Page404 extends StatefulWidget {
  const Page404({super.key});

  @override
  State<Page404> createState() => _Page404State();
}

class _Page404State extends State<Page404> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            height: 350,
            width: 350,
            child: Image.asset(
                "assets/images/504 Error Gateway Timeout-rafiki 1.png")),
      ),
    );
  }
}
