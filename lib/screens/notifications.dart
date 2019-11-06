import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Notifications();
  }
}

class _Notifications extends State<Notifications> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Pemberitahuan")),
        body: Container(color: Colors.white),);
  }

  @override
  void initState() {
    super.initState();
  }
}