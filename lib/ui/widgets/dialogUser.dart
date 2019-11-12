import 'package:flutter/material.dart';
import 'package:tmandtyfront/styles/styles.dart';
import 'package:tmandtyfront/ui/screens/create_account.dart';


//class CustomAlertDialog extends StatelessWidget {
//  final String title;
//  final String content;
//  final VoidCallback onPressed;
//
//  CustomAlertDialog({this.title, this.content, this.onPressed});
//
//  @override
//  Widget build(BuildContext context) {
//    return null;
//  }
//}
class DialogLoginUser extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: <Widget>[
        Icon(
          Icons.account_circle,
          size: 70.0,
          color: tMandTYcolor,
        ),
        Container(
          margin: const EdgeInsets.only(right: 30, left: 30),
          child: Column(
              children : [
                TextFormField(
                  key: Key('Usuario'),
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  key: Key('Contrasena'),
                  decoration: new InputDecoration(
                    labelText: 'Contraseña',
                  ),
//                onSaved: (String value) => _password = value,
                ),
                SizedBox(height: 20.0),
                Row(
                    children: [
                      RaisedButton(
                        color: tMandTYcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavBar()),
                          );
                        },
                        child: Text(
                          "ACCEDER",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                      RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: tMandTYcolor, width: 03.0)
                        ),
                        onPressed: () {
                          Navigator.pop(context, "Usuario");
                        },
                        child: Text(
                          "REGRESAR",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: tMandTYcolor,
                          ),
                        ),
                      ),
                    ]
                ),
                FlatButton(
                  child: Text(
                    'Olvide mi contraseña',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: tMandTYcolor
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, "Usuario");
                  },
                ),
              ]
          ),
        ),
      ],
    );
  }
}

RaisedButton _dialogsButtons(BuildContext context, ) => RaisedButton(
  color: tMandTYcolor,
  shape: RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(18.0),
  ),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => BottomNavBar()),
    );
  },
  child: Text(
    "ACCEDER",
    style: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
);
