import 'package:flutter/material.dart';

class App extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App>{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Scaffold(
       appBar: AppBar(
         title: Text("Login"),
       ),
      )
    );
  }

}