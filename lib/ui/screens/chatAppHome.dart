import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:tmandtyfront/ui/screens/chats.dart';
import 'package:tmandtyfront/ui/screens/languages.dart';
import 'package:tmandtyfront/ui/screens/profile.dart';


class ChatAppHome extends StatefulWidget {
  @override
  _ChatAppHomeState createState()=> new _ChatAppHomeState();
}

class _ChatAppHomeState extends State<ChatAppHome> with SingleTickerProviderStateMixin{
  
  TabController _tabController;

  @override
  void initState()
  {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 3);
    
  }  
  
  @override
  Widget build(BuildContext context){  
  return new Scaffold(
  appBar : GradientAppBar(
    gradient: LinearGradient(colors: [Colors.greenAccent, Colors.lightBlueAccent]),
    title: new Text("TypeME & TeachU"),
  
    elevation: 0.7,
    bottom: new TabBar(
      controller: _tabController,
      indicatorColor: Colors.white,
      tabs: <Widget>[
        
        new Tab(icon: new Icon(Icons.chat_bubble, color: Colors.white70,),),
        new Tab(icon: new Icon(Icons.language)),
        new Tab(icon: new Icon(Icons.person))
        

      ],
    ),
  actions: <Widget>[new Icon(Icons.add),new Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    
    
  ),
  new Icon(Icons.more_vert) ],

  ),
  body: new TabBarView(
    controller: _tabController,
    children: <Widget>[
      new Chats(),
      new LanguageScreen(),
      new Profile(),
      
    ],
  ),
  
  
  );
  
}
}