import 'package:flutter/material.dart';
import 'package:webstudycorner/pages/home.dart';

void main() {
  runApp(WebStudyCornerApp());
}

class WebStudyCornerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WebStudyCorner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
