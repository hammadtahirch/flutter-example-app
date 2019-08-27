import 'package:flutter/material.dart';
import 'package:flutter_ride_share/screen/HelpScreen.dart';
import 'package:flutter_ride_share/screen/LandingScreen.dart';
import 'package:flutter_ride_share/screen/LoginScreen.dart';
import 'package:flutter_ride_share/screen/MapScreen.dart';
import 'package:flutter_ride_share/screen/PaymentScreen.dart';
import 'package:flutter_ride_share/screen/PromotionScreen.dart';
import 'package:flutter_ride_share/screen/SignUpScreen.dart';
import 'package:flutter_ride_share/screen/TripDetailsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new LandingScreen(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new LandingScreen(),
        '/login': (BuildContext context) => new LoginScreen(title: "Login"),
        '/sign_up': (BuildContext context) => new SignUpScreen(title: "Sign Up"),
        '/map': (BuildContext context) => new MapScreen(title: "Map"),
        '/payment': (BuildContext context) => new PaymentScreen(title: "payment"),
        '/help': (BuildContext context) => new HelpScreen(title: "help"),
        '/promotion': (BuildContext context) => new PromotionScreen(title: "promotion"),
        '/trip_detail': (BuildContext context) => new TripDetailsScreen(title: "Your Trip"),
      },
    );
  }
}
