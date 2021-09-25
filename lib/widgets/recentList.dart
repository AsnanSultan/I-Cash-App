import 'package:flutter/material.dart';

import 'package:cash_app/widgets/iconBox.dart';

class RecentList extends StatelessWidget {
  IconData icon;
  Color backcolor;
  String title;
  String number;
  String date;
  String rs;
  RecentList({
    required this.icon,
    required this.backcolor,
    required this.title,
    required this.number,
    required this.date,
    required this.rs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconBox(
            color: backcolor.withOpacity(0.3),
            icon: icon,
            iconColor: Colors.black.withOpacity(0.4),
            onTap: false,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                number,
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "Date " + date,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          Expanded(child: Container()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "RS" + rs,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "View Details",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
