

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tmtaxi/AddProfile/Checked.dart';

class AddProfile extends StatefulWidget {
  const AddProfile({Key? key}) : super(key: key);

  @override
  State<AddProfile> createState() => _AddProfileState();
}

class _AddProfileState extends State<AddProfile> {
  String dropdownvalue = 'Item 1';
  String dropdownvalue1 = 'Item 1';
  String dropdownvalue2 = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  bool _checkbox = false;
  bool correct = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 252, 252, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(252, 252, 252, 1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Bildiriş goşmak",
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
              margin: const EdgeInsets.only(left: 40, top: 25),
              child: const Text(
                "Nireden",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              )),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            child: DropdownButtonFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              isExpanded: true,
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(
                Icons.keyboard_arrow_down,
                size: 30,
              ),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 40, top: 25),
              child: const Text(
                "Nirä",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              )),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            child: DropdownButtonFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              isExpanded: true,
              // Initial Value
              value: dropdownvalue1,

              // Down Arrow Icon
              icon: const Icon(
                Icons.keyboard_arrow_down,
                size: 30,
              ),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue1 = newValue!;
                });
              },
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 40, top: 25),
              child: const Text(
                "Ulag görnüşi",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              )),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            child: DropdownButtonFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              isExpanded: true,
              // Initial Value
              value: dropdownvalue2,

              // Down Arrow Icon
              icon: const Icon(
                Icons.keyboard_arrow_down,
                size: 30,
              ),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue2 = newValue!;
                });
              },
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 20),
              child: const Text(
                "Suratlar",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              )),
          Container(
            margin: const EdgeInsets.only(left: 40, right: 40, bottom: 45),
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                Image.asset(
                  "assets/img/1.jpg",
                  fit: BoxFit.contain,
                ),
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(242, 15, 0, 0.85),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      Icons.delete,
                      color: Color.fromRGBO(250, 250, 250, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 45),
            child: SvgPicture.asset("assets/img/Photo.svg"),
          ),
          Container(
              margin: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
              child: const Text(
                "Gysgaça maglumat",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 50),
            child: TextField(
              maxLines: 5,
              cursorColor: Colors.black,
              style: const TextStyle(color: Color.fromRGBO(51, 51, 51, 1)),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(252, 252, 252, 1),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(102, 102, 102, 1), width: 2),
                    borderRadius: BorderRadius.circular(6)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: const Color.fromRGBO(0, 153, 0, 1),
              title: const Text(
                'Poçta hyzmaty',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              value: _checkbox,
              onChanged: (value) {
                setState(() {
                  _checkbox = !_checkbox;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: const Color.fromRGBO(0, 153, 0, 1),
              title: const Text(
                'Düzgünleri okadym we razylaşdym',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              value: correct,
              onChanged: (value) {
                setState(() {
                  correct = !correct;
                });
              },
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Checked()));
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
                  "Bildirişi goş",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
