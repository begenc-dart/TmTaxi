import 'package:flutter/material.dart';
import 'package:tmtaxi/ResultProduct/Product.dart';

import 'ListItem.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final List<ListItem> _dropdownItems = [
    ListItem(1, "First Value"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];

  List<DropdownMenuItem<ListItem>>? _dropdownMenuItems;
  ListItem? _selectedItem;

  @override
  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems![0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = [];
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(252, 252, 252, 1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0)),
      ),
      child: ListView(
        children: [
          const Center(
              child: Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 30),
                  child: Text(
                    "Ugruňyzy we ulag görnüşini saýlaň",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ))),
          filter("Nireden"),
          filter("Nirä"),
          filter("Ulag görnüşi"),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: const Color.fromRGBO(0, 153, 0, 1),
              title: const Text(
                'Poçta hyzmaty',
                style:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              value: _checkbox,
              onChanged: (value) {
                setState(() {
                  _checkbox = !_checkbox;
                });
              },
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Product()));
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      spreadRadius: 0,
                      blurRadius: 6,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(0, 153, 0, 1)),
              child: const Text(
                "Gözle",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(250, 250, 250, 1)),
              ),
            ),
          )
        ],
      ),
    );
  }

  filter(String local) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.only(left: 40, top: 25),
            child: Text(
              local,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )),
        Container(
          margin: const EdgeInsets.only(top: 20.0, left: 40, right: 40),
          child: DropdownButtonFormField<ListItem>(
              isExpanded: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              value: _selectedItem,
              items: _dropdownMenuItems,
              onChanged: (value) {
                setState(() {
                  _selectedItem = value;
                });
              }),
        ),
      ],
    );
  }
}
