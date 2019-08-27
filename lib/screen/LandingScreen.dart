import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {

  @override
  _LandigState createState() => _LandigState();
}

class _LandigState extends State<LandingScreen> {
  String _navigate;
  bool _islogin = false;

  @override
  void initState() {
    super.initState();
    new Future.delayed(const Duration(seconds: 3), () {
      //todo: add check if session does not exsit send to login 
      if (!this._islogin) {
        this._navigate = '/login';
      } else {
        this._navigate = '/map';
      }
      Navigator.of(context).pushNamed(this._navigate);
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}
