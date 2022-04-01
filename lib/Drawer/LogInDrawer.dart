import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tmtaxi/AddProfile/Addprofile.dart';
import 'package:tmtaxi/Bildirisim/Bildiris.dart';
import 'package:tmtaxi/Habarlasmak/Contact.dart';

class LogInDrawer extends StatefulWidget {
  const LogInDrawer({Key? key}) : super(key: key);

  @override
  State<LogInDrawer> createState() => _LogInDrawerState();
}

class _LogInDrawerState extends State<LogInDrawer> {
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
                    onTap: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) => LogIn()));
                    },
                    title: const Text(
                      "+993 60 00-00-00",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    leading: SvgPicture.asset("assets/img/Profile.svg")),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 10, right: 10, bottom: 30),
                child: ListTile(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => AddProfile()));
                    },
                    title: const Text(
                      "Bildiriş goşmak",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    leading: SvgPicture.asset("assets/img/Pluse.svg")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListTile(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Bildiris()));
                    },
                    title: const Text(
                      "Hasapdan çyk",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    leading: SvgPicture.asset("assets/img/exit.svg")),
              ),
               Padding(
                padding:
                    const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 30),
                child: ListTile(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Habarlas(aBar: "Habarlaşmak", bodycom: "Telefon belgimiz: +993 60 00-00-00 Elektron poçtamyz: dowrantaksi@gmail.com")));
                    },
                    title: const Text(
                      "Habarlaşmak",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    leading: const Icon(
                      Icons.phone,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    )),
              ),
               Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: ListTile(
                  onTap: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Habarlas(aBar: "Biz barada", bodycom: "100haryt onlaýn market bolup, 2016-njy ýyldan bäri müşderilere söwdanyň tiz, ýeňil we amatly görnüşini hödürläp gelýär. Saýt alyjylaryň isleglerini kanagatlandyrmak üçin önümleriň görnüşlerini yzygiderli artdyrýar. Bu babatda marketimiz size azyk önümlerini, gök önümleri, gyzgyn çörek önümlerini, et önümlerini, arassaçylyk we saglyk önümlerini, çaga harytlaryny, öý-hojalyk harytlaryny, elektronika we tehnika serişdelerini giň görnüşde hödürleýär. Onlaýn dükanymyz iş ýerleriňize, öýleriňize ýa-da siziň islän salgyňyza eltip berip, wagtyňyzy tygşytlamaga ýardam eder. 100haryt maşgalasy geljekde has-da kämilleşip, öňde goýan maksatlaryna ýetmek üçin okgunly we ýadawsyz zähmet çekýär.")));
                  },
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
               Padding(
                padding:
                    EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 30),
                child: ListTile(
                  onTap: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Habarlas(aBar: "Sorag-Jogap", bodycom:"Sargyt edilen haryt nädogry (ýerine başga haryt) ertilen ýadaýynda alman yzyna ugradyp bilýär.")));

                  },
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
                padding: const EdgeInsets.only(left: 15, right: 10),
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
