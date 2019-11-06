import 'package:eakademik/screens/payment.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("E - Akademik"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Payment(),
                      ));
                },
                child: Container(
                    width: 128,
                    height: 128,
                    child: Card(
                      color: Colors.white,
                      elevation: 8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.payment,
                            size: 58,
                            color: Colors.blue,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Bayar Sekolah",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    )),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                  width: 128,
                  height: 128,
                  child: Card(
                    color: Colors.white,
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, left: 8, right: 8, bottom: 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.history, size: 58, color: Colors.blue),
                          SizedBox(height: 8),
                          Text(
                            "Laporan Pembayaran",
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  )),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                  width: 128,
                  height: 128,
                  child: Card(
                    color: Colors.white,
                    elevation: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.format_list_bulleted,
                            size: 58, color: Colors.blue),
                        SizedBox(height: 8),
                        Text(
                          "Data Absensi",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
