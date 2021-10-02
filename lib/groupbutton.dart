import 'package:flutter/material.dart';

class GroupRadio extends StatefulWidget {
  const GroupRadio({Key? key}) : super(key: key);

  @override
  _GroupRadioState createState() => _GroupRadioState();
}

class _GroupRadioState extends State<GroupRadio> {
  int selected = 0;
  bool _hasBeenPressed = false;
  int selected1 = 0;
  int selected2 = 0;
  int selected3 = 0;
  Widget customRadioButtons(int index, String text) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: (selected == index) ? Colors.red : Colors.white,
          side: BorderSide(color: Colors.red, width: 1.0),
          fixedSize: Size(200.0, 40.0)),
      onPressed: () {
        setState(() {
          selected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (selected == index) ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget customRadioButtons1(int index, String text) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: (selected3 == index) ? Colors.red : Colors.white,
          side: BorderSide(color: Colors.red, width: 1.0),
          fixedSize: Size(120.0, 40.0)),
      onPressed: () {
        setState(() {
          selected3 = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (selected3 == index) ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget customRadioButtonsRounded(int index, String text) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: (selected1 == index) ? Colors.red : Colors.white,
          side: BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          fixedSize: Size(200.0, 40.0)),
      onPressed: () {
        setState(
              () {
            selected1 = index;
          },
        );
      },
      child: Text(
        text,
        style: TextStyle(
          color: (selected1 == index) ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget customRadioButtonsRounded1(int index, String text) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: (selected2 == index) ? Colors.red : Colors.white,
          side: BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          fixedSize: Size(120.0, 40.0)),
      onPressed: () {
        setState(
              () {
            selected2 = index;
          },
        );
      },
      child: Text(
        text,
        style: TextStyle(
          color: (selected2 == index) ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8aaa95),
        title: Text('Group of Radio Buttons'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Horizontal',
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
                      child: customRadioButtons(1, 'Student'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: customRadioButtons(2, 'Parent'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: customRadioButtons(3, 'Teacher'),
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
                      child: customRadioButtonsRounded(1, 'Student'),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: customRadioButtonsRounded(2, 'Parents')),
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: customRadioButtonsRounded(3, 'Teachers')),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
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
                  child: customRadioButtons1(1, 'Students'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: customRadioButtons1(2, 'Parents'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: customRadioButtons1(3, 'Teachers'),
                ),
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
                    child: customRadioButtonsRounded1(1, 'Student')),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customRadioButtonsRounded1(2, 'Parents')),
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: customRadioButtonsRounded1(3, 'Teachers')),
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
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor:
                      _hasBeenPressed ? Color(0xff3c299a) : Color(0xff8aaa95),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      fixedSize: Size(180.0, 50.0)),
                  onPressed: () {
                    setState(() {
                      _hasBeenPressed = !_hasBeenPressed;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_box,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Grouped Button',
                        style: TextStyle(
                          color: _hasBeenPressed ? Colors.white : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}