import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';
class Checked extends StatefulWidget {
  const Checked({Key? key}) : super(key: key);

  @override
  State<Checked> createState() => _CheckedState();
}

class _CheckedState extends State<Checked> {
  final Telephony telephony=Telephony.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 252, 252, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(252, 252, 252, 1),
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(51, 51, 51, 1),
            )),
        title: const Text(
          "Tassyklama",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Color.fromRGBO(51, 51, 51, 1)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 45,right: 45),
            child: const Text(
              "Bildirişiňizi tassyklamak üçin +993 61 23-45-67 belgä 50 manat geçiriň",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 45,right: 45,top: 50,bottom: 50),
            child: const Text(
              "Telefon belgiňizde azyndan 50 manat mukdarda pul bolmaly",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Color.fromRGBO(200, 16, 4, 1)),
              textAlign: TextAlign.center,
            ),
          ),
          InkWell(
            onTap: (){
              _sendSMS();
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin:   const EdgeInsets.fromLTRB(30, 45, 30, 20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 153, 0, 1),
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "Töleg SMS ugrat",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _sendSMS() {
    telephony.sendSms(to: "+99362975160", message: "basardym");
  }
}
