import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmandtyfront/config/validator.dart';
import 'package:tmandtyfront/ui/screens/image_account.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}
String _userName;
String _email;
String _password;
GlobalKey _bottomNavigationKey = GlobalKey();

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[100],
          body: Center(
            child: SafeArea(
              child: Container(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      Text(
                        'Llena todos los campos para',
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38
                        ),
                      ),
                      Text(
                        'continuar con el registro',
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38
                        ),
                      ),
                      Row(children: <Widget>[
                        Expanded(
                          child: new Container(
                              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                              child: Divider(
                                color: Colors.black,
                                height: 30.0,
                              )),
                        ),
                      ]),
                      Container(
                          margin: const EdgeInsets.only(right: 50, left: 50),
                          child: Wrap(
                              alignment: WrapAlignment.center,
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Nombre/s',
                                    icon: new Icon(Icons.assignment_ind),
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Apellido/s',
                                    icon: new Icon(Icons.assignment_ind),
                                  ),
                                ),
                                TextFormField(
                                  key: Key('email'),
                                  decoration: new InputDecoration(
                                      labelText: 'Correo',
                                      icon: new Icon(Icons.mail)
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
//                                  inputType: TextInputType.emailAddress,
//
                                  onSaved: (String value) => _email = value,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Usuario',
                                    icon: new Icon(Icons.person),
                                  ),
                                ),

                                TextFormField(
                                  obscureText: true,
                                  key: Key('Contrasena'),
                                  decoration: new InputDecoration(
                                      labelText: 'Contraseña',
                                      icon: new Icon(Icons.lock)
                                  ),
                                  onSaved: (String value) => _password = value,

                                ),
                                TextFormField(
                                  obscureText: true,
                                  key: Key('ContrasenaRepeat'),
                                  decoration: new InputDecoration(
                                      labelText: 'Verificar contraseña',
                                      icon: new Icon(Icons.lock)
                                  ),
                                  cursorColor: Colors.lightBlue,
                                  onSaved: (String value) => _password = value,

                                ),
                                SizedBox(height: 80.0),
                                CheckboxListTile(
                                  value: _value2,
                                  title: new Text('Crear usuario como tutor'),
                                  controlAffinity: ListTileControlAffinity
                                      .leading,
                                  subtitle: new Text(
                                      'Los usuarios tutores deben manejar al menos 2 lenguas'),
                                  secondary: new Icon(Icons.contact_mail),
                                  onChanged: (bool value) {
                                    setState(() {
                                      _value2 = value;
                                    });
                                  },
                                  activeColor: Colors.lightBlue,
                                ),
                                SizedBox(height: 70.0),
                              ])
                      ),

                      Container(
                        height: 45,
                        width: 220,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder( borderRadius: new BorderRadius.circular(50.0), ),
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ImageAccount()),
                            );
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [Colors.greenAccent, Colors.lightBlueAccent]),
                              borderRadius: BorderRadius.all(Radius.circular(80.0)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                              alignment: Alignment.center,
                              child: Text(
                                "Continuar",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),

                          ),

                        ),
                      )
                    ],
                  )
              ),
            ),
          ),
        ),
      );
  }
}

class EmailFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Email can\'t be empty' : null;
  }
}
bool _value1 = false;
bool _value2 = true;


Row _paginador(String Texto) => Row(children: <Widget>[
  Expanded(
    child: new Container(
        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
        child: Divider(
          color: Colors.black,
        )),
  ),
  Text(Texto),
  Expanded(
    child: new Container(
        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
        child: Divider(
          color: Colors.black,
        )),
  ),
]);