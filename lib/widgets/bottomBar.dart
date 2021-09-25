import 'package:cash_app/widgets/iconBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  Color color = Colors.green;
  Color color2 = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    color = Colors.green;
                    color2 = Colors.grey;
                  });
                },
                child: Icon(
                  Icons.home_outlined,
                  size: 32,
                  color: color,
                ),
              ),
              Text(
                "home",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.person_outline,
                size: 32,
                color: Colors.grey,
              ),
              Text(
                "profile",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: IconBox(
              color: Colors.green,
              icon: Icons.add,
              iconColor: Colors.white,
              onTap: false,
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    color2 = Colors.green;
                    color = Colors.grey;
                  });
                },
                child: Icon(
                  CupertinoIcons.creditcard,
                  size: 32,
                  color: color2,
                ),
              ),
              Text(
                "my card",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.history,
                size: 32,
                color: Colors.grey,
              ),
              Text(
                "history",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
