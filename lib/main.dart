import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Hello World",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.green
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "Hello World";
  void _changeText(){
  setState((){
    if(mytext.startsWith("H"))
    mytext = "Clicked";
    else
    mytext = "Hello World";
  });
}

  Widget _bodyWidget(){
  return new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(mytext, style: new TextStyle(
            fontSize: 30.0,
          ),),

        ],
      ),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),

      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}