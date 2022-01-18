import 'package:flutter/material.dart';
import 'package:news_app_197110026/main.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 55.0,
            backgroundImage: AssetImage('assets/img/nawir.png'),
            backgroundColor: Colors.orange[300],
          ),
          SizedBox(
            height: 30.0,
            width: 150.0,
            child: Divider(
              color: Colors.blue,
            ),
          ),
          Text(
            "M. NAWIR",
            style: TextStyle(
              fontFamily: 'BebasNeue',
              color: Colors.orange[600],
              fontSize: 25,
            ),
          ),
          Text(
            "FLUTTER DEVELOVER",
            style: TextStyle(
              color: Colors.blue[900],
              fontSize: 20,
              letterSpacing: 2.5,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.insert_drive_file_outlined,
                color: Colors.white,
              ),
              title: Text(
                "NPM : 19710026",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              title: Text(
                "5A SI REG PAGI BJM",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Alamat :Jl.Cemara raya II Banjarmasin Utara",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.date_range,
                color: Colors.white,
              ),
              title: Text(
                "TTL : Sekapung, 26-10-2000",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.contact_page,
                color: Colors.white,
              ),
              title: Text(
                "CONTACT :082290773951",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
