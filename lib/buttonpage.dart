import 'package:flutter/material.dart';

class GroupButtons extends StatefulWidget {
  const GroupButtons({Key? key}) : super(key: key);

  @override
  _GroupButtonsState createState() => _GroupButtonsState();
}

class _GroupButtonsState extends State<GroupButtons> {
  bool selected = false;

  Widget customRadio(int index) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: selected ? Color(0xff3c299a) : Color(0xff8AAAE5),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          fixedSize: Size(150.0, 50.0)),
      onPressed: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Row(
        children: [
          Icon(
            Icons.radio_button_checked,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            'Radio Button',
            style: TextStyle(
              color: selected ? Colors.white : Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8AAAE5),
        title: Text('Grouped Button Example '),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Horizontal',style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Expanded(
                flex: 50,
                child: Column(
                  children: [
                    Text(
                      'Shape Disabled',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CustomCheckbox(text: 'Monday', selected: false),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CustomCheckbox(text: 'Tuesday', selected: true),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CustomCheckbox(text: 'Wednesday', selected: false),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CustomCheckbox(text: 'Thursday', selected: true),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 50,
                child: Column(
                  children: [
                    Text(
                      'Shape Enabled',
                    ),
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RoundedCheckbutton(
                          text: 'Monday',
                          selected: true,
                        )),
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RoundedCheckbutton(
                          text: 'Tuesday',
                          selected: false,
                        )),
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RoundedCheckbutton(
                          text: 'Wednesday',
                          selected: true,
                        )),
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RoundedCheckbutton(
                          text: 'Thursday',
                          selected: false,
                        )),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),   Text(
            'Vertical',style: TextStyle(fontSize: 20.0),
          ), SizedBox(
            height: 10.0,
          ),
          Text(
            'Shape Disabled',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CheckboxShort(
                      text: 'Monday',
                      selected: false,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CheckboxShort(
                      text: 'Tuesday',
                      selected: true,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CheckboxShort(
                      text: 'Wednesday',
                      selected: false,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CheckboxShort(
                      text: 'Thursday',
                      selected: true,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CheckboxShort(
                      text: 'Friday',
                      selected: false,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CheckboxShort(
                      text: 'Saturday',
                      selected: true,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CheckboxShort(
                      text: 'Sunday',
                      selected: false,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Shape Enabled',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: RoundedCheckShort(
                      text: 'Monday',
                      selected: true,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: RoundedCheckShort(
                      text: 'Tuesday',
                      selected: false,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: RoundedCheckShort(
                      text: 'Wednesday',
                      selected: true,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: RoundedCheckShort(
                      text: 'Thursday',
                      selected: false,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: RoundedCheckShort(
                      text: 'Friday',
                      selected: true,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: RoundedCheckShort(
                      text: 'Saturday',
                      selected: false,
                    )),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: RoundedCheckShort(
                      text: 'Sunday',
                      selected: true,
                    )),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                customRadio(1),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomCheckbox extends StatefulWidget {
  final String text;
  final bool selected;
  CustomCheckbox({
    required this.text,
    required this.selected,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool _isSelected = widget.selected;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: (_isSelected) ? Colors.red : Colors.white,
          side: BorderSide(color: Colors.red, width: 1.0),
          fixedSize: Size(200.0, 40.0)),
      onPressed: () {
        setState(
              () {
            _isSelected = !_isSelected;
          },
        );
      },
      child: Text(
        widget.text,
        style: TextStyle(
          color: _isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class RoundedCheckbutton extends StatefulWidget {
  final String text;
  final bool selected;
  RoundedCheckbutton({
    required this.text,
    required this.selected,
  });
  @override
  _RoundedCheckbuttonState createState() => _RoundedCheckbuttonState();
}

class _RoundedCheckbuttonState extends State<RoundedCheckbutton> {
  late bool _isSelected = widget.selected;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: _isSelected ? Colors.red : Colors.white,
          side: BorderSide(color: Colors.red, width: 1.0),
          fixedSize: Size(200.0, 40.0)),
      onPressed: () {
        setState(
              () {
            _isSelected = !_isSelected;
          },
        );
      },
      child: Text(
        widget.text,
        style: TextStyle(
          color: _isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class CheckboxShort extends StatefulWidget {
  final String text;
  final bool selected;
  CheckboxShort({
    required this.text,
    required this.selected,
  });
  @override
  _CheckboxShortState createState() => _CheckboxShortState();
}

class _CheckboxShortState extends State<CheckboxShort> {
  late bool _isSelected = widget.selected;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: _isSelected ? Colors.red : Colors.white,
          side: BorderSide(color: Colors.red, width: 1.0),
          fixedSize: Size(120.0, 40.0)),
      onPressed: () {
        setState(
              () {
            _isSelected = !_isSelected;
          },
        );
      },
      child: Text(
        widget.text,
        style: TextStyle(
          color: _isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class RoundedCheckShort extends StatefulWidget {
  final String text;
  final bool selected;
  RoundedCheckShort({
    required this.text,
    required this.selected,
  });

  @override
  _RoundedCheckShortState createState() => _RoundedCheckShortState();
}

class _RoundedCheckShortState extends State<RoundedCheckShort> {
  late bool _isSelected = widget.selected;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          backgroundColor: _isSelected ? Colors.red : Colors.white,
          side: BorderSide(color: Colors.red, width: 1.0),
          fixedSize: Size(120.0, 40.0)),
      onPressed: () {
        setState(
              () {
            _isSelected = !_isSelected;
          },
        );
      },
      child: Text(
        widget.text,
        style: TextStyle(
          color: _isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}