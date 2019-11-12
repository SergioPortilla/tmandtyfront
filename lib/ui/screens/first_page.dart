import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmandtyfront/delayed_animation.dart';
import 'package:tmandtyfront/main.dart';
import 'package:tmandtyfront/styles/styles.dart';
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
        backgroundColor: tMandTYcolor,
        body: Center(
          child: SafeArea(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: <Widget>[

                AvatarGlow(
                  endRadius: 90,
                  duration: Duration(seconds: 2),
                  glowColor: Colors.white24,
                  repeat: true,
                  repeatPauseDuration: Duration(seconds: 2),
                  startDelay: Duration(seconds: 1),
                  child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: FlutterLogo(
                          size: 50.0,
                        ),
                        radius: 50.0,
                      )),
                ),
                _textAnimate(
                  text: "Type Me & Teach You", delayment: 1000,
                  styles: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: color
                  ),
                ),
                SizedBox(height: 25.0,),

                _textAnimate(
                    text: "Tú plataforma personal de", delayment: 2000),
                _textAnimate(
                    text: "tutorias y acompañamiento", delayment: 2000),
                _textAnimate(text: "en tus idiomas favoritos", delayment: 2000),
                SizedBox(height: 200.0,),

                DelayedAimation(
                  child: GestureDetector(
                    onTapDown: _onTapDown,
                    onTapUp: _onTapUp,
                    child: Transform.scale(
                      scale: _scale,
                      child:  animatedButtonUI2,
                    ),
                  ),
                  delay: delayedAmount + 4000,
                ),
                SizedBox(height: 30.0),
                DelayedAimation(
                  delay: delayedAmount + 5000,
                  child: FlatButton(
                    child: Text(
                      'YA TENGO UNA CUENTA',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: color
                      ),
                    ),
                    onPressed: () => showDialog(
                        context: context,
                        child: DialogLoginUser(),
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

  Widget get animatedButtonUI => Container(
    height: 60,
    width: 270,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100.0),
      color: Colors.white,
    ),
    child: RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomNavBar()),
        );
      },
      child: Text(
        'CREAR CUENTA',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: tMandTYcolor ,
        ),
      ),
    ),
  );

  Widget get animatedButtonUI2 =>
      Container(
        height: 60,
        width: 270,
        child: RaisedButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(50.0),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BottomNavBar()),
            );
          },
          child: Text(
            "CREAR CUENTA",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: tMandTYcolor,
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
  if (styles == null) styles = TextStyle(fontSize: 20.0, color: color);

  return DelayedAimation(
    child: Text(
      text,
      style: styles ,
    ),
    delay: delayedAmount + delayment,
  );
}
