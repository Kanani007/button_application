import 'buttonpage.dart';
import 'flotingpage.dart';
import 'groupbutton.dart';
import 'menupage.dart';
import 'Reacationbuton.dart.';
import 'package:flutter/material.dart';
import 'buttonpage_icon.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHome(),
    );
  }
}

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191919),
      appBar: AppBar(
        backgroundColor: Color(0xffB88746),
        title: Text('All Screen Link'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffB88746),
                fixedSize: Size(280, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>FloatingActionButtonDemo(),
                  ),
                );
              },
              child: Text("Fab Menu Screen"),
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary:Color(0xffB88746),
                fixedSize: Size(280, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyTabbar(),
                  ),
                );
              },
              child: Text('Buttons Page'),
            ),

            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary:Color(0xffB88746),
                fixedSize: Size(280, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GroupButtons(),
                  ),
                );
              },
              child: Text("Group of buttons"),
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary:Color(0xffB88746),
                fixedSize: Size(280, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GroupRadio(),
                  ),
                );
              },
              child: Text("Group of Radio buttons"),
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary:Color(0xffB88746),
                fixedSize: Size(280, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DropMenu(),
                  ),
                );
              },
              child: Text("Menu Button Example"),
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary:Color(0xffB88746),
                fixedSize: Size(280, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReactionButtonPage(),
                  ),
                );
              },
              child: Text("Reaction Button Example"),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}