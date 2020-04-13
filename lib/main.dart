import 'package:flutter/material.dart';
import 'package:travelui/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFDBECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7)
      ),
      home: MyHomePage(title: 'Travel app'),
    );
  }
}


