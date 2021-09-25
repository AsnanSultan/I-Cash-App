import 'package:cash_app/widgets/bottomBar.dart';
import 'package:cash_app/widgets/iconBox.dart';
import 'package:cash_app/widgets/recentList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tap = 0;

  bool ChangColor(int num) {
    if (num == tap) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.green[900],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, right: 20, left: 20),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.line_horizontal_3_decrease,
                      color: Colors.white,
                      size: 32,
                    ),
                    Expanded(child: Container()),
                    Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                      size: 32,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/ProfilePic.jpg"),
                      radius: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconBox(
                      color: Colors.white,
                      icon: Icons.attach_money,
                      iconColor: Colors.green,
                      onTap: false,
                    ),
                    IconBox(
                      color: Colors.white,
                      icon: Icons.send,
                      iconColor: Colors.green,
                      onTap: false,
                    ),
                    IconBox(
                      color: Colors.white,
                      icon: Icons.question_answer_outlined,
                      iconColor: Colors.green,
                      onTap: false,
                    ),
                    IconBox(
                      color: Colors.white,
                      icon: CupertinoIcons.creditcard,
                      iconColor: Colors.green,
                      onTap: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 30, right: 25, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bank",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "      Send",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "     Request",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "Borrow",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 565,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, bottom: 20),
                      child: Text(
                        "Recharges and Bill payments",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            tap = 0;
                            setState(() {});
                          },
                          child: IconBox(
                            color: Color(0xff70e6ba),
                            icon: Icons.mobile_screen_share,
                            iconColor: Colors.black.withOpacity(0.5),
                            onTap: ChangColor(0),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            tap = 1;
                            setState(() {});
                          },
                          child: IconBox(
                            color: Color(0xff70e6ba),
                            icon: CupertinoIcons.lightbulb,
                            iconColor: Colors.black.withOpacity(0.5),
                            onTap: ChangColor(1),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            tap = 2;
                            setState(() {});
                          },
                          child: IconBox(
                            color: Color(0xff70e6ba),
                            icon: Icons.flight_takeoff_outlined,
                            iconColor: Colors.black.withOpacity(0.5),
                            onTap: ChangColor(2),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            tap = 3;
                            setState(() {});
                          },
                          child: IconBox(
                            color: Color(0xff70e6ba),
                            icon: Icons.train_outlined,
                            iconColor: Colors.black.withOpacity(0.5),
                            onTap: ChangColor(3),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, left: 25, right: 28, bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mobile",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Text(
                            "   Electricity",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Text(
                            "Flight-Booking  ",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Text(
                            "Train",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            tap = 4;
                            setState(() {});
                          },
                          child: IconBox(
                            color: Color(0xff70e6ba),
                            icon: CupertinoIcons.car,
                            iconColor: Colors.black.withOpacity(0.5),
                            onTap: ChangColor(4),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            tap = 5;
                            setState(() {});
                          },
                          child: IconBox(
                            color: Color(0xff70e6ba),
                            icon: Icons.satellite_outlined,
                            iconColor: Colors.black.withOpacity(0.5),
                            onTap: ChangColor(5),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            tap = 6;
                            setState(() {});
                          },
                          child: IconBox(
                            color: Color(0xff70e6ba),
                            icon: Icons.movie_creation_outlined,
                            iconColor: Colors.black.withOpacity(0.5),
                            onTap: ChangColor(6),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            tap = 7;
                            setState(() {});
                          },
                          child: IconBox(
                            color: Color(0xff70e6ba),
                            icon: Icons.fireplace_outlined,
                            iconColor: Colors.black.withOpacity(0.5),
                            onTap: ChangColor(7),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, left: 30, right: 28, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "   Car",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Text(
                            "      Cable",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Text(
                            "Cinema ticket  ",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Text(
                            "Gas  ",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 10),
                      child: Text(
                        "Recent Transactions",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 165,
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        children: [
                          RecentList(
                              icon: Icons.mobile_screen_share_outlined,
                              backcolor: Colors.blue,
                              title: "Mobile Recharge",
                              number: "03096417530",
                              date: "18/09/2021",
                              rs: "500"),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                            height: 5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RecentList(
                              icon: Icons.satellite_outlined,
                              backcolor: Colors.pink,
                              title: "Cable subscription",
                              number: "03096417530",
                              date: "18/09/2021",
                              rs: "2,000"),
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    BottomBar(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
