import 'package:flutter/material.dart';

import '../ProductDetails/Detals.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    filter(String them, String com) {
      return Padding(
        padding: const EdgeInsets.only(left: 40, top: 20),
        child: Row(
          children: [
            Text(
              them,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                com,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: Color.fromRGBO(252, 252, 252, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(252, 252, 252, 1),
          elevation: 0,
          leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title: const Text(
            "Gozleg netijesi",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 24, color: Colors.black),
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(254, 254, 254, 1),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        filter("Nireden:","Tejen"),
                        filter("Nirä:","Mary"),
                        Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: filter("Ulag görnüşi:","Sienna"))
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Details()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(254, 254, 254, 1),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 130,
                      child: Row(
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,bottom: 15,left: 20),
                          child: Image.asset("assets/img/1.jpg"),
                        ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,top: 15,bottom: 15,right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text("Sienna",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),),
                                  ),
                                  Expanded(child: Text("Tazeje lada 6njy iller 3 sagatda eltse men 1 yarym sagatda eltyan. Kansaneri isleyar, peci hem isleya. mantafon ba pioneer bas bockaly. Munsen nadip baranynam bilmeyan samalyotdan gaty gidyan.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                childCount: 3,
              ),
            ),
          ],
        ));
  }
}
