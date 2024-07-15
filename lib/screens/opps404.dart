import 'package:flutter/material.dart';

class Opps404 extends StatefulWidget {
  const Opps404({super.key});

  @override
  State<Opps404> createState() => _Opps404State();
}

class _Opps404State extends State<Opps404> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 350,
            width: 350,
            child: Image.asset("assets/images/Oops! 404 Error with a broken robot-cuate (1) 1@2x.png")),
      ),
    );
  }
}
