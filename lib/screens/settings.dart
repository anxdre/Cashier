import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool studentPayment = true;
  bool studentLate = true;
  bool studentAbsent = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengaturan"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 8),
              Row(
                children: <Widget>[
                  Text(
                    "Pemberitahuan",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Pemberitahuan Bayar Siswa",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Switch(
                    value: studentPayment,
                    onChanged: (value) {
                      setState(() {
                        studentPayment = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Siswa Terlambat",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Switch(
                    value: studentLate,
                    onChanged: (value) {
                      setState(() {
                        studentLate = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: AutoSizeText(
                        "Siswa Tidak Masuk atau Tanpa Keterangan",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  Switch(
                    value: studentAbsent,
                    onChanged: (value) {
                      setState(() {
                        studentAbsent = value;
                      });
                    },
                  )
                ],
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Anda Ingin Keluar ?",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  MaterialButton(onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: Text("Logout"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
