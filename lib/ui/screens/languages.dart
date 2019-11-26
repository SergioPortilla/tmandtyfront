import 'package:flutter/material.dart';
import 'package:tmandtyfront/models/lang_model.dart';
import 'chat_details.dart';


class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreen createState() => _LanguageScreen();
}

class _LanguageScreen extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return  new ListView.builder(
      itemCount:  dummyDato.length,
      itemBuilder: (context, i)=> new Column(
        children: <Widget>[
         
          new Divider(
            height: 20.0,
          ),
          new ListTile(
          
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                 
                Center(child: Text('                       ' + dummyDato[i].name,style: new TextStyle(fontWeight: FontWeight.bold)),),
               new IconButton(
                icon: new Icon(Icons.people,color: Colors.blueAccent,),
                iconSize: 40.0,
              
                onPressed: (){
                  Navigator.push(
                       context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                         );
                }    ),           
              ],
            ),

             leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummyDato[i].avatarUrl),
            ),       
          )         
        ],         
      ),
    );
  }
}

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}


class _SecondRouteState extends State<SecondRoute>{
  @override
  Widget build(BuildContext context) {
  
        return Scaffold(
          backgroundColor: Colors.white,
          
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                
                  maxRadius: 70,
                  backgroundImage: NetworkImage("https://www.universitiesuk.ac.uk/International/PublishingImages/Languages%20word%20cloud.png?RenditionID=8"),),
                  Text('',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Teachers',
                  style: TextStyle(
                    fontSize: 30.0,
                    color:Colors.lightBlue,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 200,
                    child: Divider(
                      color: Colors.white,

                    ),
                  ),
                  Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                  child: ListTile(
                    leading: Icon(
                      Icons.portrait,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      'Teacher: Andrew Weill',
                      style: TextStyle(fontSize: 20.0,
                      color:Colors.blueAccent),
                    ),
                     onLongPress:(){
                      Navigator.push(
                       context,
                        MaterialPageRoute(builder: (context) => ChatDetails()),
                         );
                    },
                    subtitle: Text('Active',
                    style: TextStyle(fontSize: 13.0,
                      color:Colors.greenAccent),),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                  child: ListTile(
                    leading: Icon(
                      Icons.portrait,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      'Teacher: Robert Dale',
                      style: TextStyle(fontSize: 20.0,
                      color:Colors.blueAccent),
                    ),
                     onLongPress:(){
                      Navigator.push(
                       context,
                        MaterialPageRoute(builder: (context) => ChatDetails()),
                         );
                    },
                    subtitle: Text('active',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.greenAccent,
                    )),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                  child: ListTile(
                    leading: Icon(
                      Icons.portrait,
                      color:Colors.blueAccent,
                    ),
                    title: Text(
                      'Teacher: Eleonor Ray',
                      style: TextStyle(fontSize: 20.0,
                      color:Colors.blueAccent),
                      
                    ),
                    
                    onLongPress:(){
                      Navigator.push(
                       context,
                        MaterialPageRoute(builder: (context) => ChatDetails()),
                         );
                    },
                    subtitle: Text('active',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.greenAccent,
                    ))
                    ,
                    
                  ),
                ),
                
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                  child: ListTile(
                    leading: Icon(
                      Icons.portrait,
                      color:Colors.blueAccent,
                    ),
                    title: Text(
                      'Teacher: Elizabeth Portter',
                      style: TextStyle(fontSize: 20.0,
                      color:Colors.blueAccent),
                      
                    ),
                     
                    subtitle: Text('inactive',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.redAccent,
                    ))
                    ,
                    
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                  child: ListTile(
                    leading: Icon(
                      Icons.portrait,
                      color:Colors.blueAccent,
                    ),
                    title: Text(
                      'Teacher: Steve Crowling',
                      style: TextStyle(fontSize: 20.0,
                      color:Colors.blueAccent),
                      
                    ),
                  
                    subtitle: Text('inactive',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.redAccent,
                    ))
                    ,
                    
                  ),
                )  
                 
              ],
            ),
          ),
    );
  }
}