import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PaymentState();
  }
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Bayar Sekolah"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(
           child: Column(
             children: <Widget>[
               Container(
                 width: double.infinity,
                 color: Colors.green,
               )
             ],
           ),
         ),
       ),
      ),
    );
  }
}
