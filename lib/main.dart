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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  "Look into the Deep",
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                color: Colors.black54,
              ),
              Container(
                height: 500,
                // padding: EdgeInsets.fromLTRB(50, 51, 52, 53),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/83606.jpg'),
                    backgroundColor: Colors.blueAccent,
                    minRadius: 50,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.car_repair,
                    size: 50.5,
                    color: Colors.pink,
                  ),
                  SnackBarIcon()
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}

class SnackBarIcon extends StatefulWidget {
   SnackBarIcon({Key? key}) : super(key: key);

  @override
  _SnackBarIconState createState() => _SnackBarIconState();
}

class _SnackBarIconState extends State<SnackBarIcon> {
  var btnHits = 0;

  @override
  Widget build(BuildContext context) {
    btnHits = 0;
    return Center(
      child: ElevatedButton(
        onPressed: () {
          btnHits = btnHits + 1;
          final snackBar = SnackBar(
            content:  Text('Yay! A SnackBar has showed $btnHits times'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                btnHits = btnHits -1;
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Icon(
          Icons.ac_unit,
          size: 78.1,
          color: Colors.blueGrey[500],
        ),
      ),
    );
  }
}
