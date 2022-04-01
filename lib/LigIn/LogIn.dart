import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 252, 252, 1),
      appBar: AppBar(backgroundColor: const Color.fromRGBO(252, 252, 252, 1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Içeri girmek",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24,color: Colors.black),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
