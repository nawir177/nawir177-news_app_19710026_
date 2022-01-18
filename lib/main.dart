import 'package:flutter/material.dart';
import 'package:news_app_197110008/splash.dart';
import 'package:news_app_197110008/components/customListTile.dart';
import 'package:news_app_197110008/model/article_model.dart';
import 'package:news_app_197110008/services/api_service.dart';
import 'package:news_app_197110008/services/navigation.dart';
import 'package:news_app_197110008/profile/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        'HalamanPertama': (BuildContext context) => new HalamanPertama(),
        'bisnis': (BuildContext context) => new HomePage2(),
        'olahraga': (BuildContext context) => new HomePage3(),
        'profile': (BuildContext context) => new profile(),
      },
    );
  }
}
class HomePage2 extends StatefulWidget {
  @override
  berita_bisnis createState() => berita_bisnis();
}

class HomePage3 extends StatefulWidget {
  @override
  berita_olahraga createState() => berita_olahraga();
}


//kelas berita bisnis
class berita_bisnis extends State<HomePage2> {
  ApiService_bisnis client = ApiService_bisnis();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Berita Bisnis", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class berita_olahraga extends State<HomePage3> {
  ApiService_sport client = ApiService_sport();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Berita Olahraga", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
