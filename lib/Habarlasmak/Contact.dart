import 'package:flutter/material.dart';

class Habarlas extends StatefulWidget {
  String aBar;
  String bodycom;

  Habarlas({required this.aBar, required this.bodycom});

  @override
  State<Habarlas> createState() => _HabarlasState();
}

class _HabarlasState extends State<Habarlas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 252, 252, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(252, 252, 252, 1),
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.aBar,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Color.fromRGBO(51, 51, 51, 1)),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios,
                color: Color.fromRGBO(51, 51, 51, 1))),
      ),
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 20),
              child: Text(
                widget.bodycom,
                style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ))
        ],
      ),
    );
  }
}
