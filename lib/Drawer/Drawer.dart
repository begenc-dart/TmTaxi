import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:tmtaxi/LigIn/LogIn.dart';

class Drawers extends StatefulWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.all(30),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListTile(
                  onTap: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => LogIn()));
                  },
                    title: const Text(
                      "Içeri gir",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    leading: SvgPicture.asset("assets/img/SignUp.svg")),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 30),
                child: ListTile(
                    title: Text(
                      "Habarlaşmak",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    leading: Icon(
                      Icons.phone,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: ListTile(
                    title: Text(
                      "Biz barada",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    leading: Icon(
                      Icons.info,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    )),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 30),
                child: ListTile(
                    title: Text(
                      "Sorag-Jogap",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    leading: Icon(
                      Icons.question_answer_outlined,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    )),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Made by",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(102, 102, 102, 1)),
              ),
              Padding(
                padding: const EdgeInsets.
                only(left: 15,right: 10),
                child: SvgPicture.asset("assets/img/BatyrLogo.svg"),
              ),
              Column(

                children: const [
                  Text(
                    "agamyradov ",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(102, 102, 102, 1)),
                  ),
                  Text(
                    "solutions",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(102, 102, 102, 1)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
