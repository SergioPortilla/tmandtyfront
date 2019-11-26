import 'package:flutter/material.dart';
import 'package:tmandtyfront/ui/screens/chatAppHome.dart';

class ImageAccount extends StatefulWidget {
  @override
  _ImageAccountState createState() => _ImageAccountState();
}

class _ImageAccountState extends State<ImageAccount> {

  List _cities =
  ["Español", "English", "日本語", "Italiano", "한국어"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;
  String _currentCity2;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
    _currentCity2 = _dropDownMenuItems[1].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      items.add(new DropdownMenuItem(
          value: city,
          child: new Text(city)
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: SafeArea(
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
                          margin: const EdgeInsets.only(
                              left: 20.0, right: 20.0),
                          child: Divider(
                            color: Colors.black,
                            height: 30.0,
                          )),
                    ),
                  ]),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Sube una foto tuya',
                    style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black38
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 40.0),
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 100,
                          child: ClipOval(
                            child: new SizedBox(
                              width: 200.0,
                              height: 200.0,
                              child: Image.network(
                                "https://www.midlandsderm.com/wp-content/uploads/2019/04/Rachel-R.-Person.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 180.0, bottom: 30.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.image,
                            color: Colors.lightBlueAccent,
                            size: 30.0,
                          ),
                          onPressed: () {
//                      getImage();
                          },
                        ),
                      ),
                    ],
                  ),

              Container(
                color: Colors.white,
                child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Idioma Nativo:"),
                        Container(
                          padding: new EdgeInsets.all(16.0),
                        ),
                        DropdownButton(
                          value: _currentCity2,
                          items: _dropDownMenuItems,
                          onChanged: changedDropDownItem2,
                        )
                      ],
                    )
                ),
              ),
                  Container(
                    color: Colors.white,
                    child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Idioma a aprender:"),
                            Container(
                              padding: new EdgeInsets.all(16.0),
                            ),
                            DropdownButton(
                              value: _currentCity,
                              items: _dropDownMenuItems,
                              onChanged: changedDropDownItem,
                            )
                          ],
                        )
                    ),
                  ),
                  SizedBox(height: 60.0),
                  Container(
                    height: 45,
                    width: 220,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),),
                      padding: EdgeInsets.all(0.0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatAppHome()),
                        );
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.greenAccent,
                            Colors.lightBlueAccent
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                              minWidth: 88.0, minHeight: 36.0),
                          // min sizes for Material buttons
                          alignment: Alignment.center,
                          child: Text(
                            "Finalizar",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                    ),
                  ),
                ]
            ),
          ),
        ),

      ),
    );
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentCity = selectedCity;
    });
  }

  void changedDropDownItem2(String selectedCity) {
    setState(() {
      _currentCity2 = selectedCity;
    });
  }
}
