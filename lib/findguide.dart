import 'package:flutter/material.dart';

void main() {
  runApp(FindGuidPage());
}

class FindGuidPage extends StatefulWidget {
  FindGuidPage({Key key}) : super(key: key);

  @override
  _FindGuidPage createState() => _FindGuidPage();
}

class _FindGuidPage extends State<FindGuidPage> {
  final titles = ["List 1", "Listt 2", "List 3"];
  final subtitles = [
    "Here is list 1 sub",
    "Here is List 2 sub",
    "Here is List 3 sub",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbfcba8),
      body: Card(
        margin: EdgeInsets.only(
          top: 100,
          left: 20,
          right: 20,
        ),

        //    child: Column(children: [
        //  Expanded(flex: 2,
        // child: Text('Top Gides')),
        //Expanded(
        //flex: 2,
        child: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color(0xff5b8a72),
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              child: ListTile(
                onTap: () {},
                title: Text(titles[index]),
                subtitle: Text(subtitles[index]),
                leading: CircleAvatar(
                  backgroundColor: Color(0xffbfcba8),
                ),
              ),
            );
          },
        ),
      ),
      // ]
      // )
      // )
    );
  }
}
