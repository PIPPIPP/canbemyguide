import 'package:flutter/material.dart';
import 'package:itg2/firstpage.dart';
import 'sign_in.dart';
import 'package:itg2/main.dart';
import 'sign_up.dart';
import 'inputname.dart';
import 'findguide.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var materialApp = MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  );
  runApp(materialApp);
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SigninPage();
  }
}
