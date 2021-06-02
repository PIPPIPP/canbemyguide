import 'package:flutter/material.dart';

void main() {
  runApp(SignupPage());
}

class SignupPage extends StatefulWidget {
  SignupPage({Key key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final TextField _txtEnterMail = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter Mail',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
    );
    final TextField _txtEnterPassword = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter Password',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
    );
    final TextField _txtConfirmPassword = new TextField(
      decoration: new InputDecoration(
        hintText: 'Confirm Password',
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
            child: _txtEnterMail,
          ),
          new Container(
            margin: new EdgeInsets.only(top: 10, left: 30, right: 30),
            decoration: new BoxDecoration(
              color: Color.fromARGB(255, 240, 240, 240),
            ),
            child: _txtEnterPassword,
          ),
          new Container(
            margin: new EdgeInsets.only(top: 10, left: 30, right: 30),
            decoration: new BoxDecoration(
              color: Color.fromARGB(255, 240, 240, 240),
            ),
            child: _txtConfirmPassword,
          ),
          new Container(
            margin: EdgeInsets.only(left: 100, right: 100, top: 10),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new RaisedButton(
                  child: new Text("Sign up"),
                  textColor: Colors.white,
                  color: Color(0xff56776c),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  onPressed: () {},
                ))
              ],
            ),
          )
        ],
      ),
      backgroundColor: Color(0xffbfcba8),
    );
  }
}
