import 'package:eakademik/screens/profile.dart';
import 'package:eakademik/screens/settings.dart';
import 'package:flutter/material.dart';

import 'mainmenu.dart';
import 'notifications.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _cIndex = 0;
  final List<Widget> _children = [
    MainMenu(),
    Notifications(),
    Settings(),
    Profile()
  ];

  void _incrementTab(index) {
    setState(() {
      _cIndex = index; //TODO::BottomNavSetState
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _incrementTab(index); //TODO::BottomNav
        },
        currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 8,
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: _cIndex == 0
                  ? Text("Beranda", style: TextStyle(color: Colors.black))
                  : Text("Beranda", style: TextStyle(color: Colors.grey)),
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: _cIndex == 1
                  ? Text("Pemberitahuan",
                      style: TextStyle(color: Colors.black, fontSize: 12))
                  : Text("Pemberitahuan",
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
              icon: Icon(Icons.notifications_active)),
          BottomNavigationBarItem(
              title: _cIndex == 2
                  ? Text("Pengaturan", style: TextStyle(color: Colors.black))
                  : Text("Pengaturan", style: TextStyle(color: Colors.grey)),
              icon: Icon(Icons.settings)),
          BottomNavigationBarItem(
              title: _cIndex == 3
                  ? Text("Profil", style: TextStyle(color: Colors.black))
                  : Text("Profil", style: TextStyle(color: Colors.grey)),
              icon: Icon(Icons.contacts)),
        ],
      ),
      body: _children[_cIndex],
    );
  }
}
