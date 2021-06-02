import 'package:flutter/material.dart';
import 'package:itg2/sign_in.dart';
import 'sign_up.dart';

void main() {
  runApp(SigninPage());
}

class SigninPage extends StatefulWidget {
  SigninPage({Key key}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    final TextField _txtEnterMail = new TextField(
      decoration: new InputDecoration(
        hintText: 'Enter Mail',
        contentPadding: new EdgeInsets.all(10),
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
    return Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            width: 100,
            height: 100,
          ),
          new Container(
            margin: new EdgeInsets.only(top: 20, left: 30, right: 30),
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
            margin: EdgeInsets.only(
              left: 100,
              right: 100,
              top: 10,
            ),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new RaisedButton(
                  child: new Text("Sign in"),
                  textColor: Colors.white,
                  color: Color(0xff56776c),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  onPressed: () {},
                ))
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Do you have an account? "),
            new InkWell(
              child: new Text(
                "Sign up.",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () => {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SignupPage()))
              },
            )
          ]),
        ],
      ),
      backgroundColor: Color(0xffbfcba8),
    );
  }
}
