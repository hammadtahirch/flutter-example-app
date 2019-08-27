import 'package:flutter/material.dart';
import 'package:flutter_ride_share/screen/widgets/BaseAppBar.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<PaymentScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: widget.title),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         
        ),
      )
    );
  }
}
