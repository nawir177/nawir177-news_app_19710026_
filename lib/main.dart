import 'package:flutter/material.dart';
import 'package:news_app_197110026/splash.dart';
import 'package:news_app_197110026/components/customListTile.dart';
import 'package:news_app_197110026/model/article_model.dart';
import 'package:news_app_197110026/services/api_service.dart';
import 'package:news_app_197110026/services/navigation.dart';
import 'package:news_app_197110026/profile/profile.dart';

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
        'teknologi': (BuildContext context) => new HomePage1(),
        'bisnis': (BuildContext context) => new HomePage2(),
        'olahraga': (BuildContext context) => new HomePage3(),
        'profile': (BuildContext context) => new profile(),
      },
    );
  }
}

class HomePage1 extends StatefulWidget {
  @override
  berita_teknologi createState() => berita_teknologi();
}

class HomePage2 extends StatefulWidget {
  @override
  berita_bisnis createState() => berita_bisnis();
}

class HomePage3 extends StatefulWidget {
  @override
  berita_olahraga createState() => berita_olahraga();
}

//kelas berita teknologi
class berita_teknologi extends State<HomePage1> {
  ApiService_technology client = ApiService_technology();
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
          title:
              Text("Berita Teknologi", style: TextStyle(color: Colors.black)),
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
