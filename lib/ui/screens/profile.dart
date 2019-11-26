import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage("https://www.midlandsderm.com/wp-content/uploads/2019/04/Rachel-R.-Person.jpg"),),
                  Text('Sara K. Brady',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('English Stundent',
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
                      Icons.phone,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      '(322) 832 2748',
                      style: TextStyle(fontSize: 20.0,
                      color:Colors.blueAccent),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      'sarak_brady@gmail.com',
                      style: TextStyle(fontSize: 20.0,
                      color:Colors.blueAccent),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0 ),
                  child: ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Colors.blueAccent,
                      
                    ),
                    
                    title: Text(
                      'Bristol, United Kingdom',
                      style: TextStyle(fontSize: 20.0,
                      color:Colors.blueAccent),
                      
                    ),
                    
                  ),
                )  
                 
              ],
            ),
          ),
    );
      
  }
}