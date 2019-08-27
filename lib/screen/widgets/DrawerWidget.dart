import 'package:flutter/material.dart';
import 'package:flutter_ride_share/screen/HelpScreen.dart';
import 'package:flutter_ride_share/screen/MapScreen.dart';
import 'package:flutter_ride_share/screen/PaymentScreen.dart';
import 'package:flutter_ride_share/screen/PromotionScreen.dart';
import 'package:flutter_ride_share/screen/TripDetailsScreen.dart';
import 'package:flutter_ride_share/transition/SlideIn.dart';

class DrawerWiget extends StatefulWidget {
  @override
  _DrawerWigetState createState() => _DrawerWigetState();
}

class _DrawerWigetState extends State<DrawerWiget> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: Container(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: new AssetImage("assets/images/profile.jpg"),
                      minRadius: 55,
                      maxRadius: 55,
                    ),
                    Text("Hammad Tahir" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ],
                ),
              )
              ),
          new ListTile(
              title: new Text("Your Trips",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              trailing: new Icon(Icons.calendar_today, color: Colors.black),
              onTap: () {
                Navigator.push(context,
                    SlideIn(page: TripDetailsScreen(title: "Trip Details")));
              }),
          new Divider(),
          new ListTile(
              title: new Text("Payment",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              trailing: new Icon(Icons.payment, color: Colors.black),
              onTap: () {
                Navigator.push(
                    context, SlideIn(page: PaymentScreen(title: "Payment")));
              }),
          new Divider(),
          new ListTile(
              title: new Text("Help",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              trailing: new Icon(Icons.help, color: Colors.black),
              onTap: () {
                Navigator.push(
                    context, SlideIn(page: HelpScreen(title: "Help")));
              }),
          new Divider(),
          new ListTile(
              title: new Text("Promotion",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              trailing: new Icon(Icons.thumb_up, color: Colors.black),
              onTap: () {
                Navigator.push(context,
                    SlideIn(page: PromotionScreen(title: "Promotion")));
              }),
        ],
      ),
    );
  }
}
