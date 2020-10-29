import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webstudycorner/pages/onboarding.dart';
import 'package:webstudycorner/pages/webview.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool alreadyVisited;

  Future<bool> getPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getBool('alreadyVisited') ?? prefs.setBool('alreadyVisited', false);
    alreadyVisited = prefs.getBool('alreadyVisited');
    print(alreadyVisited);
    return alreadyVisited;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPage(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data) {
            return WebViewPage();
          } else {
            return Onboarding();
          }
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
