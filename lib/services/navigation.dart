import 'package:flutter/material.dart';
import 'dart:async';
import 'package:news_app_197110008/main.dart';

//Membuat Halaman Crad
class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pilihan Berita"),
        backgroundColor: Colors.pink[300],
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              IconButton(
                icon: new Icon(Icons.business, color: Colors.black54),
                onPressed: () {
                  Navigator.pushNamed(context, 'bisnis');
                },
                iconSize: 100.0,
              ),
              Text("Bisnis")
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: new Icon(Icons.sports, color: Colors.red),
                onPressed: () {
                  Navigator.pushNamed(context, 'olahraga');
                },
                iconSize: 100.0,
              ),
              Text("Olahraga")
            ],
          ),
          Column(
            children: [
              IconButton(
                icon:
                    new Icon(Icons.contact_mail_outlined, color: Colors.black),
                onPressed: () {
                  Navigator.pushNamed(context, 'profile');
                },
                iconSize: 100.0,
              ),
              Text("Profile")
            ],
          )
        ],
      )),
    );
  }
}
