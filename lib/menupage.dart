import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropMenu extends StatefulWidget {
  const DropMenu({Key? key}) : super(key: key);

  @override
  _DropMenuState createState() => _DropMenuState();
}

class _DropMenuState extends State<DropMenu> {
  var _itemList = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  var currentSelected = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Custom Dropdown Menu',
          style: TextStyle(color: Color(0xff171616)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Normal Use of Menu Button',
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration.collapsed(hintText: ''),
              dropdownColor: Color(0xffd7bfbf),
              isExpanded: true,
              isDense: true,
              autofocus: true,
              items: _itemList.map(
                    (String dropDownStingItem) {
                  return DropdownMenuItem(
                    child: Text(dropDownStingItem),
                    value: dropDownStingItem,
                  );
                },
              ).toList(),
              onChanged: (newValueSelected) {
                dropDownItemSelected(newValueSelected!);
              },
              value: currentSelected,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
            child: DropdownButtonFormField<String>(
              dropdownColor: Color(0xffd7bfbf),
              isExpanded: true,
              isDense: true,
              autofocus: true,
              items: _itemList.map(
                    (String dropDownStingItem) {
                  return DropdownMenuItem(
                    child: Text(dropDownStingItem),
                    value: dropDownStingItem,
                  );
                },
              ).toList(),
              onChanged: (newValueSelected) {
                dropDownItemSelected(newValueSelected!);
              },
              value: currentSelected,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),

        ],
      ),
    );
  }

  void dropDownItemSelected(newValueSelected) {
    setState(() {
      this.currentSelected = newValueSelected!;
    });
  }
}