import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(GuideDetailPage());
}

void launchUrl(String url) async {
  if (await canLaunch(url)) {
    launch(url);
  } else {
    throw "Could not launch $url";
  }
}

class GuideDetailPage extends StatefulWidget {
  GuideDetailPage({Key key}) : super(key: key);

  @override
  _GuideDetailPage createState() => _GuideDetailPage();
}

class _GuideDetailPage extends State<GuideDetailPage> {
  final List<String> text = [
    "ยสตน",
    "พิมริมสระ เพื่อบอกรักในหลวง",
    "ทำไมต้องพิมริมสระ",
    "ริมสระนะค่ะ"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffbfcba8),
        body: Container(
            alignment: Alignment.center,
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
                              height: 200,
                              width: 300,
                              fit: BoxFit.fitHeight,
                            ),
                            const InkWell(
                              child: Text(
                                'Mr. PIPPIP POOPPOOP',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Color(0xff56776C),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const InkWell(
                                child: Text(
                              'ฉันเกิดในรัชกาลที่ ๙ ยสตน ยอมสู้ตายเพื่อในหลวง วัยรุ่นสร้างตัว ไอ้แม้วไม่รักชาติ ประยุทธ์เป็นคนดี ไอพ่ก3กีบ ชาติ ศาสนา พระหมากะสัด พี่รู้พี่มันเฬว',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Color(0xff56776C),
                              ),
                            )),
                            InkWell(
                                onTap: () {
                                  launchUrl("tel:+66917571467");
                                },
                                child: Text(
                                  'Tel : 0917571467',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Color(0xff56776C),
                                  ),
                                ))
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          height: MediaQuery.of(context).size.height * 0.20,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: text.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Card(
                                  color: Color(0xffbfcba8),
                                  elevation: 1.5,
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        text[index].toString(),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(
                              left: 220,
                            ),
                            child: new ButtonTheme(
                                child: new RaisedButton(
                              child: new Text("Review"),
                              textColor: Colors.white,
                              color: Color(0xff56776c),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0)),
                              onPressed: openAlertBox,
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

  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Rate",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 4.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Add Review",
                        border: InputBorder.none,
                      ),
                      maxLines: 8,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Color(0xff5b8a72),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0)),
                      ),
                      child: Text(
                        "Send",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
