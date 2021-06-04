import 'package:flutter/material.dart';

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
                  margin: EdgeInsets.all(10),
                  child: new Row(
                    children: <Widget>[
                      new Expanded(
                          child: new RaisedButton(
                        child: new Text("Find Guide"),
                        textColor: Colors.white,
                        color: Color(0xff56776c),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                        onPressed: () => {},
                      ))
                    ],
                  )),
              const SizedBox(
                width: 10,
                height: 200,
              ),
            ],
          ),
        )));
  }
}
