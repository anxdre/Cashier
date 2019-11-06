import 'package:eakademik/screens/homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            FlutterLogo(
              size: 128,
            ),
            SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.only(
                  left: 28, right: 28, top: 18, bottom: 0),
              child: TextField(
                maxLines: 1,
                obscureText: false,
                decoration: InputDecoration(hintText: 'ID'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 28, right: 28, top: 18, bottom: 0),
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(hintText: 'Username'),
                obscureText: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 28, right: 28, top: 18, bottom: 0),
              child: TextFormField(
                obscureText: true,
                maxLines: 1,
                decoration: InputDecoration(hintText: 'Password'),
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.only(
                  left: 28, right: 28, top: 18, bottom: 18),
              child: Container(
                width: double.infinity,
                height: 48,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomePage())); //TODO::Move State
                  },
                  color: Colors.lightBlue,
                  textColor: Colors.white,
                  child: Text(
                    "Masuk",
                    style: TextStyle(fontSize: 18),
                  ),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
