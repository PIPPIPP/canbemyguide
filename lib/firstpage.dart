import 'package:flutter/material.dart';
import 'readpage.dart';

void main() {
  runApp(FirstPage());
}

class FirstPage extends StatefulWidget {
  FirstPage({Key key}) : super(key: key);

  @override
  _FirstPage createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffbfcba8),
        body: Center(
            child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              new Container(
                  margin: EdgeInsets.all(20),
                  child: new Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          'images/P1.JPG',
                          height: 200,
                          width: 200,
                          fit: BoxFit.fitHeight,
                        ),
                        const InkWell(
                          child: Text('Wat Phra Kaew'),
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.only(
                          left: 220,
                        ),
                        child: new ButtonTheme(
                            child: new RaisedButton(
                          child: new Text("Find Guide"),
                          textColor: Colors.white,
                          color: Color(0xff56776c),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0)),
                          onPressed: () => {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReadPage()))
                          },
                        )))
                  ])),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 6,
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        )));
  }
}

//const SizedBox(
//               height: 500,
//           ),
