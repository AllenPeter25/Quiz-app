import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Myappstate();
  }
}

class _Myappstate extends State<Myapp> {
  int qindex = 0;
  void ans() {
    setState(() {
      qindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var que = [
      "Sydney is the capital of Australia",
      "The speed of light is 3x10^8 m/s",
      " 'Ee Sala cup namde' is the slogan of RCB"
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "TRUE OR FALSE",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              ),
              toolbarHeight: 65,
              backgroundColor: Colors.lime,
            ),
            body: Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(45)),
                  Text(
                    que[qindex],
                    style: TextStyle(fontSize: 25),
                  ),
                  RaisedButton(
                    onPressed: ans,
                    child: Text("TRUE"),
                    color: Colors.green,
                  ),
                  RaisedButton(
                    onPressed: ans,
                    child: Text("FALSE"),
                    color: Colors.red,
                  )
                ],
              ),
            )));
  }
}
