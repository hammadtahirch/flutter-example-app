import 'package:flutter/material.dart';
import 'package:flutter_ride_share/screen/widgets/BaseAppBar.dart';
import 'package:flutter_ride_share/screen/widgets/DrawerWidget.dart';

class TripDetailsScreen extends StatefulWidget {
  TripDetailsScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TripDetailsState createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetailsScreen> {

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
