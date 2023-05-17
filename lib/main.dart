import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final List<Image> imagesList= [
    Image.asset('images/download.jpg'),
    Image.asset('images/img.png'),
    Image.asset('images/img_1.png'),
    Image.asset('images/img_2.png'),
    Image.asset('images/img_3.png'),
    Image.asset('images/img_4.png')

    ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid View Pics"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [...imagesList],

          ),

        ),
      ),
    );
  }
}

