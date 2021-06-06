import 'package:flutter/material.dart';

void main() {
  runApp(ReadPage());
}

class ReadPage extends StatefulWidget {
  ReadPage({Key key}) : super(key: key);

  @override
  _ReadPage createState() => _ReadPage();
}

class _ReadPage extends State<ReadPage> {
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
                  margin: EdgeInsets.only(
                      top: 50, bottom: 0, left: 100, right: 100),
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
                height: 500,
              ),
            ],
          ),
        )));
  }
}
