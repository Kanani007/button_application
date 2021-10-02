import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class MyTabbar extends StatefulWidget {
  const MyTabbar({Key? key}) : super(key: key);

  @override
  _MyTabbarState createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  Container tabBarContainer(String text, IconData icon) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xff292826),
      ),
      child: Tab(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
            ),
            SizedBox(
              width: 2.0,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xffFCE77D),
        appBar: AppBar(
          title: Text('Custom TabBar Example'
              ''),
          backgroundColor: Color(0xffF96167,),
          elevation: 10.0,
          toolbarHeight: 120,
          bottom: TabBar(
            unselectedLabelColor: Colors.white30,
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
            indicatorColor: Colors.pink,
            tabs: [
              tabBarContainer('Car', Icons.directions_car),
              tabBarContainer('Bus', Icons.directions_bus),
              tabBarContainer('Cycle', Icons.motorcycle),
              tabBarContainer('Taxi', Icons.directions_car_outlined),
              tabBarContainer('Aeroplane', Icons.airplanemode_on_sharp),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tabBody(Icons.directions_car),
            tabBody(Icons.directions_bus),
            tabBody(Icons.motorcycle_outlined),
            tabBody(Icons.directions_car_outlined),
            tabBody(Icons.airplanemode_on_rounded)
          ],
        ),
      ),
    );
  }

  Icon tabBody(IconData icon) {
    return Icon(
      icon,
      color: Colors.white,
      size: 100,
    );
  }
}