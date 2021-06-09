import 'package:flutter/material.dart';
import 'package:itg2/findguide.dart';

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
                  margin: EdgeInsets.all(20),
                  child: new Column(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          'images/P1.JPG',
                          height: 300,
                          width: 300,
                          fit: BoxFit.fitHeight,
                        ),
                        const InkWell(
                          child: Text(
                            'Wat Phra Kaew',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff56776C),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const InkWell(
                            child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Leo parturient vel morbi rhoncus quam tellus iaculis ut. Morbi lacus leo ut nunc amet. Viverra enim tincidunt feugiat malesuada interdum turpis. Mattis feugiat sed pellentesque commodo a vestibulum. Pulvinar eu neque, quisque ullamcorper pulvinar suspendisse facilisi. Cursus vel mattis risus gravida pellentesque. Accumsan vestibulum imperdiet enim purus id faucibus mi.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xff56776C),
                          ),
                        ))
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.only(
                          left: 220,
                          top: 60,
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
                                    builder: (context) => FindGuidPage()))
                          },
                        )))
                  ])),
              /*   const SizedBox(
                height: 300,
              ),*/
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
