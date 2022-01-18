import 'package:flutter/material.dart';
import 'dart:async';
import 'package:news_app_197110026/main.dart';

//Membuat Halaman Crad
class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Menu Pilihan Berita"),
        backgroundColor: Colors.blue,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              IconButton(
                icon: new Icon(Icons.account_tree_rounded, color: Colors.blue),
                onPressed: () {
                  Navigator.pushNamed(context, 'teknologi');
                },
                iconSize: 70.0,
              ),
              Text("Teknologi")
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: new Icon(Icons.attach_money, color: Colors.green[900]),
                onPressed: () {
                  Navigator.pushNamed(context, 'bisnis');
                },
                iconSize: 70.0,
              ),
              Text("Bisnis")
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: new Icon(Icons.sports_volleyball_sharp,
                    color: Colors.black),
                onPressed: () {
                  Navigator.pushNamed(context, 'olahraga');
                },
                iconSize: 70.0,
              ),
              Text("Olahraga")
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: new Icon(Icons.person_pin_sharp, color: Colors.black),
                onPressed: () {
                  Navigator.pushNamed(context, 'profile');
                },
                iconSize: 70.0,
              ),
              Text("Profile")
            ],
          )
        ],
      )),
    );
  }
}
