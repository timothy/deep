import 'package:flutter/material.dart';

void main() {
  runApp(DeepApp());
}

class DeepApp extends StatelessWidget {
  const DeepApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          title: Text("Deep waves"),
          backgroundColor: Colors.deepOrange[900],
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(50.0),
            child: Column(children: [
              Text("Look into the Deep"),
              Container(
                height: 300,
                // padding: EdgeInsets.fromLTRB(50, 51, 52, 53),
                child: Center(
                  child: Image(
                    image: AssetImage('images/83606.jpg'),
                  ),
                ),
              ),
            ],),
          )
        ),
      ),
    );
  }
}
