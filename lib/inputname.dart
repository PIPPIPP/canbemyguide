import 'package:flutter/material.dart';
import 'package:itg2/firstpage.dart';

void main() {
  runApp(InputNamePage());
}

class InputNamePage extends StatefulWidget {
  InputNamePage({Key key}) : super(key: key);

  @override
  _InputNamePageState createState() => _InputNamePageState();
}

class _InputNamePageState extends State<InputNamePage> {
  @override
  Widget build(BuildContext context) {
    final TextField _txtWhatWeCallYou = new TextField(
      decoration: new InputDecoration(
        hintText: 'How we call you?',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
    );
    return Scaffold(
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.only(top: 10, left: 30, right: 30),
              decoration: new BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
              ),
              child: _txtWhatWeCallYou,
            ),
            new Container(
              margin: EdgeInsets.only(left: 100, right: 100, top: 10),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new RaisedButton(
                    child: new Text("Next"),
                    textColor: Colors.white,
                    color: Color(0xff56776c),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (FirstPage())));
                    },
                  ))
                ],
              ),
            )
          ]),
      backgroundColor: Color(0xffbfcba8),
    );
  }
}
