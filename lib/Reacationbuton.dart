import 'package:flutter/material.dart';

class ReactionButtonPage extends StatefulWidget {
  const ReactionButtonPage({Key? key}) : super(key: key);

  @override
  _ReactionButtonPageState createState() => _ReactionButtonPageState();
}

class _ReactionButtonPageState extends State<ReactionButtonPage> {
  Widget customCard(String imageLink) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Color(0xff2F3C7E),
      elevation: 20.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      borderOnForeground: true,
      shadowColor: Color(0xff98a0e7),
      child: Column(
        children: [
          Image.asset(imageLink),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Row(
                    children: [
                      Icon(Icons.thumb_up, color: Colors.white),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Like",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  onTap: () {
                    showDialogbox(context);
                  },
                ),
                Row(
                  children: [
                    Icon(Icons.comment, color: Colors.white),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "comment",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share, color: Colors.white),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "share",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff868ba7),
      appBar: AppBar(
        backgroundColor: Color(0xff2F3C7E),
        title: Text('Reaction Button'),
        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 45.0,
                width: 45.0,
                child: Image.asset('images/shiva.jpg'),
              ),
            ),
            onTap: () {
              showDialog(
                  barrierColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.black26,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 16,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Image.asset(
                              'images/india.jpg',
                              height: 40.0,
                              width: 40.0,
                            ),
                            // Image.asset(
                            //     'images/flag-Stars-and-Stripes-May-1-1795.jpg',
                            //     height: 40.0,
                            //     width: 40.0),
                            Image.asset('images/flag.jpg',
                                height: 40.0, width: 40.0),
                            Image.asset('images/iran.jpg',
                                height: 40.0, width: 40.0),
                            Image.asset('images/china.jpg',
                                height: 40.0, width: 40.0),
                          ],
                        ),
                      ),
                    );
                  });
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          customCard(
            'images/india.jpg',
          ),
          customCard('images/1.jpg'),
          customCard('images/2.jpg'),
          customCard('images/3.jpg'),
        ],
      ),
    );
  }

  Future<dynamic> showDialogbox(BuildContext context) {
    return showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }
}

class DialogBox extends StatelessWidget {
  const DialogBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 16,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.thumb_up),
            Text(
              '🤩',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '🤣',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '😭',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '😨',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '🤬',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
