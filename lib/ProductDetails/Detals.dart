import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromRGBO(153, 153, 153, 1),
                )),
            backgroundColor: Colors.green,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/img/1.jpg', fit: BoxFit.cover),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                details("Nireden:", "Tejen"),
                details("Nirä:", "Mary"),
                details("Ulag görnüşi", "Sienna"),
                details("Telefon belgi:", "+993 60 00-00-00"),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "Gysgaça maglumat:",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Tazeje lada 6njy iller 3 sagatda eltse men 1 yarym sagatda eltyan. Kansaneri isleyar, peci hem isleya. mantafon ba pioneer bas bockaly. Munsen nadip baranynam bilmeyan samalyotdan gaty gidyan.",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30,horizontal: 15),
                  width: MediaQuery.of(context).size.width ,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 153, 0, 1),
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
                      "Jaň et",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(250, 250, 250, 1)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  details(String not, String com) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
      child: Row(
        children: [
          Text(
            not,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              com,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
