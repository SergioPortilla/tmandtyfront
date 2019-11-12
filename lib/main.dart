import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmandtyfront/main.first.dart';
import 'package:tmandtyfront/ui/screens/first_page.dart';

//void main() {
//  SystemChrome.setEnabledSystemUIOverlays([]);
//  runApp(SecondRoute());
//}
//void main() => runApp(MyApp());
void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    debugShowCheckedModeBanner: false,
    home: MyApp2(),
  ));
}

class MyApp2 extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}
