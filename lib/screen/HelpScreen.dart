import 'package:flutter/material.dart';
import 'package:flutter_ride_share/screen/widgets/BaseAppBar.dart';
import 'package:flutter_ride_share/screen/widgets/DrawerWidget.dart';

class HelpScreen extends StatefulWidget {
  HelpScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<HelpScreen> {

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
