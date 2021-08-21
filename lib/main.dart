import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            title: Text("Deep waves"),
            backgroundColor: Colors.deepOrange[900],
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/83606.jpg'),
            ),
          )),
    ),
  );
}
