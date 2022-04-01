import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tmtaxi/Drawer/Drawer.dart';

import '../Drawer/LogInDrawer.dart';
import 'filter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LogInDrawer(),
      backgroundColor: Color.fromRGBO(0, 153, 0, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(0, 153, 0, 1),
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/img/Group 210.svg"),
            const Text(
              "tmtaxi",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Filter(),
    );
  }
}
