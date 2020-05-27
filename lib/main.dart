import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OneTouch Touchless',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'OneTouch Touchless'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _elevator = "Stop"; 
  void _incrementCounter() {
    setState(() {
      _elevator = "Up";
    });
  }
  void _decrementCounter() {
   setState(() {
      _elevator = "Down";
   });
  }


  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              '$_elevator',
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         FloatingActionButton(
           onPressed: _incrementCounter,
           tooltip: 'Increment',
           child: Icon(Icons.arrow_upward),
         ),
         SizedBox(
           height: 30.0,
         ),
         FloatingActionButton(
           onPressed: _decrementCounter,
           tooltip: 'Decrement',
           child: Icon(Icons.arrow_downward),
         ),
       ],
     ),
   // This trailing comma makes auto-formatting nicer for build methods.
      );
    return scaffold;
  }
}
