import 'package:flutter/material.dart';
import 'package:flutter_ride_share/screen/widgets/BaseAppBar.dart';
import 'package:flutter_ride_share/screen/widgets/DrawerWidget.dart';

class PromotionScreen extends StatefulWidget {
  PromotionScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PromotionState createState() => _PromotionState();
}

class _PromotionState extends State<PromotionScreen> {

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
