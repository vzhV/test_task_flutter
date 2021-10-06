import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();

}
class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    var r = Random().nextInt(256);
    var g = Random().nextInt(256);
    var b = Random().nextInt(256);
    void rgb(){
      r = Random().nextInt(256);
      g = Random().nextInt(256);
      b = Random().nextInt(256);
    }

    Color color = Color.fromRGBO(r, g, b, 1.0);
    //Color prev_color = Colors.white;
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepPurpleAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text('R = ${r}, G = $g, B = $b, O = 1.0'),
          centerTitle: true,
          backgroundColor: Colors.black45,
        ),
        backgroundColor: color,

        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
          setState(() {
            //prev_color = color;
            rgb();
            color = Color.fromRGBO(r, g, b, 1.0);
          });},
          child: myBodyText(),
        ),

    ));
  }

}
class myBodyText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hey there",
        style: TextStyle(
            inherit: true,
            fontSize: 48.0,
            color: Colors.white,
            shadows: [
              Shadow(
                  offset: Offset(-1.5, -1.5),
                  color: Colors.grey
              ),
              Shadow(
                  offset: Offset(1.5, -1.5),
                  color: Colors.grey
              ),
              Shadow(
                  offset: Offset(1.5, 1.5),
                  color: Colors.grey
              ),
              Shadow(
                  offset: Offset(-1.5, 1.5),
                  color: Colors.grey
              ),
            ]
        ),)
    );
  }

}