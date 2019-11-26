import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:tmandtyfront/delayed_animation.dart';
import 'package:tmandtyfront/main.dart';
import 'package:tmandtyfront/styles/styles.dart';
import 'package:tmandtyfront/ui/screens/chatAppHome.dart';
import 'package:tmandtyfront/ui/screens/create_account.dart';
import 'package:tmandtyfront/ui/widgets/dialogUser.dart';

final int delayedAmount = 1000;
final color = Colors.white;

class MyAppState extends State<MyApp2> with SingleTickerProviderStateMixin {

  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: SafeArea(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[
              Material(
                  child: Image.asset(
                    'assets/images/Imagen1.png',
                    width: 300.0,
                  ),
              ),
              SizedBox(height: 30.0),
              _textAnimate(
                text: "Type Me & Teach You", delayment: 1000,
                styles: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.black54
                ),
              ),
              SizedBox(height: 60.0),

                _textAnimate(
                    text: "Tú plataforma personal de", delayment: 2000),
                _textAnimate(
                    text: "tutorias y acompañamiento", delayment: 2000),
                _textAnimate(text: "en tus idiomas favoritos", delayment: 2000),
                SizedBox(height: 70.0,),
                DelayedAimation(
                  delay: delayedAmount + 3000,
                  child: Container(
                    margin: EdgeInsets.only(right: 60, left: 60),
                    child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          TextFormField(
                            key: Key('Usuario'),
                            decoration: InputDecoration(labelText: 'Usuario'),
                          ),
                          TextFormField(
                            obscureText: true,
                            key: Key('Contrasena'),
                            decoration: new InputDecoration(
                                labelText: 'Contraseña'),
                            //onSaved: (String value) => _password = value,
                          ),
                          SizedBox(height: 90.0),
                          DelayedAimation(
                            delay: delayedAmount + 4000,
                            child: animatedButtonUI2,
                          ),
                          SizedBox(height: 60.0),
                          _textAnimate(
                            text: "O ingresa mediante",
                            delayment: 5000,
                            styles: TextStyle(
                              fontSize: 15.0, color: Colors.black54
                            )
                          ),
                          DelayedAimation(
                            delay: delayedAmount + 4000,
                            child: Row(
                              children: [
                                SizedBox(width: 50.0),
                                SignInButton(
                                  Buttons.Facebook,
                                  mini: true,
                                  onPressed: () {},
                                ),
                                SizedBox(width: 20.0),
                                SignInButton(
                                  Buttons.GoogleDark,
                                  mini: true,
                                  onPressed: () {},
                                ),
                                SizedBox(width: 20.0),
                                SignInButton(
                                  Buttons.Twitter,
                                  mini: true,
                                  onPressed: () {},
                                )
                              ],
                            )
                          ),
                          SizedBox(height: 50.0),
                          Row(
                            children: [
                              _textAnimate(text: "¿Aún no tienes cuenta?",
                                  delayment: 5000,
                                  styles: TextStyle(
                                      fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.black54
                                  )
                              ),
                              DelayedAimation(
                                delay: delayedAmount + 5000,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => BottomNavBar()),
                                    );
                                  },
                                  child: Text(
                                    'regístrate aquí',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.lightBlue
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget get animatedButtonUI2 =>
      Container(
        height: 45,
        width: 220,
        child: RaisedButton(
          shape: RoundedRectangleBorder( borderRadius: new BorderRadius.circular(50.0), ),
          padding: EdgeInsets.all(0.0),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatAppHome()),
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
                "Ingresar",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

          ),

        ),
      );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}

DelayedAimation _textAnimate({String text, TextStyle styles, int delayment}) {
  if (styles == null) styles = TextStyle(fontSize: 20.0, color: Colors.black54);

  return DelayedAimation(
    child: Text(
      text,
      style: styles ,
    ),
    delay: delayedAmount + delayment,
  );
}
