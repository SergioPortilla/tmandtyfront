import 'dart:math';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmandtyfront/styles/styles.dart';

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
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.person , size: 30, color: Colors.white),
            Icon(Icons.image, size: 30, color: Colors.white),
            Icon(Icons.payment , size: 30, color: Colors.white),
            Icon(Icons.language , size: 30, color: Colors.white),
            Icon(Icons.check , size: 30, color: Colors.white),
          ],
          color: tMandTYcolor,
          buttonBackgroundColor: tMandTYcolor,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeOutCubic,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: SafeArea(
          child: Wrap(
            children: <Widget>[
              _pageView(_page),
            ],
        )),
    );
  }
}

class EmailFieldValidator {
  static String validate(String value) {
    return value.isEmpty ? 'Email can\'t be empty' : null;
  }
}

Container _pageView(int page) {
  switch (page) {
    case 0:
      return _pageUserData();
      break;

    case 4:
      return _pageUserImage();
      break;

    default:
      return _pageUserImage();
      break;
  }
}
bool _value1 = false;
bool _value2 = false;

//we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
//void _value1Changed(bool value) => setState(() => _value1 = value);
//void _value2Changed(bool value) => setState(() => _value2 = value);
Container _pageUserData() => Container(
            margin: const EdgeInsets.only(right: 30, left: 30),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
                Text(
                  'Crear Cuenta',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: tMandTYcolor
                  ),
                ),
                SizedBox(height: 70.0),
                _paginador("Datos Personales"),
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
                  validator: EmailFieldValidator.validate,
                  onSaved: (String value) => _email = value,
                ),
                SizedBox(height: 100.0),
                _paginador("Datos del aplicativo"),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                    icon: new Icon(Icons.person),
                  ),
                ),

                Divider(
                  color: tMandTYcolor,
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
                  onSaved: (String value) => _password = value,

                ),
                SizedBox(height: 80.0),
                CheckboxListTile(
                  value: _value2,
//                  onChanged: _value2Changed,
                  title: new Text('Crear usuario como tutor'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('Los usuarios tutores deben manejar al menos 2 lenguas'),
                  secondary: new Icon(Icons.contact_mail),
                  activeColor: tMandTYcolor,
                ),
              ],
            )
        );

Container _pageUserImage() => Container(
        margin: const EdgeInsets.only(right: 30, left: 30),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: new InputDecoration(
                  hintText: 'otro',
                  icon: new Icon(Icons.person)
              ),
            ),
            RaisedButton(
              child: Text('Go To Page of index 1'),
              onPressed: () {
                final CurvedNavigationBarState navBarState =
                    _bottomNavigationKey.currentState;
                navBarState.setPage(1);
              },
            )
          ],
        )
    );


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