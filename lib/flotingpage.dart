import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatefulWidget {
  const FloatingActionButtonDemo({
    Key? key,
  }) : super(key: key);

  @override
  _FloatingActionButtonDemoState createState() =>
      _FloatingActionButtonDemoState();
}

class _FloatingActionButtonDemoState extends State<FloatingActionButtonDemo>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;

  late AnimationController _animationController;


  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350),
    )..addListener(() {
      setState(() {});
    });


    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  popUp() {
    showMenu<String>(
      color: Colors.transparent,
      useRootNavigator: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      context: context,
      position: RelativeRect.fromLTRB(95.0, 300.0, 0.0,
          10.0), //position where you want to show the menu on screen
      items: [
        PopupMenuItem(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: PopupmenuItem(
              name: "Copy",
              icon: Icons.copy,
            ),
          ),
        ),
        PopupMenuItem(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: PopupmenuItem(
              name: "Paste",
              icon: Icons.paste,
            ),
          ),
        ),
        PopupMenuItem(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: PopupmenuItem(
              name: " Cut",
              icon: Icons.cut,
            ),
          ),
        ),
      ],
      elevation: 1.0,
    ).then<void>((String? itemSelected) {
      if (itemSelected == null) return;

      if (itemSelected == "Cut") {
        //code here
      } else if (itemSelected == "Paste") {
        //code here
      } else {
        //code here
      }
    });
  }

  animate() {
    setState(() {
      isOpen = !isOpen;
      if (!isOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          child: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                setState(() {
                  print(isOpen);
                  isOpen = !isOpen;
                  print(isOpen);
                });
                popUp();
              },
              child: !isOpen
                  ? Icon(Icons.keyboard_arrow_up)
                  : Icon(Icons.keyboard_arrow_down)),
        ),
      ),
    );
  }
}

class PopupmenuItem extends StatelessWidget {
  final String? name;
  final IconData? icon;
  const PopupmenuItem({
    Key? key,
    this.name,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(name ?? " "),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blue,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
/*AnimatedIcon(
icon: AnimatedIcons.list_view,
progress: _animatedIcons,
)*/
