import 'package:flutter/material.dart';
import 'package:flutter_ride_share/screen/MapScreen.dart';
import 'package:flutter_ride_share/screen/SignUpScreen.dart';
import 'package:flutter_ride_share/screen/widgets/BaseAppBar.dart';
import 'package:flutter_ride_share/transition/SlideIn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final emailTextFeild = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Mobile number or email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
    final passwordTextFeild = TextField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Please enter password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
    final submitButton = RaisedButton(
      onPressed: () {
        Navigator.push(context,
            SlideIn(page: MapScreen(title: "Map")));
      },
      color: Colors.blueGrey,
      child: const Text('Login',
          style: TextStyle(fontSize: 20, color: Colors.white)),
    );

    return Scaffold(
      appBar: BaseAppBar(title: widget.title),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/images/login.png",
                width: 100,
                height: 100,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: emailTextFeild,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: passwordTextFeild,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.height,
                child: submitButton,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    Navigator.push(context,
                        SlideIn(page: SignUpScreen(title: "Sign Up")));
                  },
                  child: Text("Create account",
                      style: TextStyle(fontSize: 16, color: Colors.blueGrey)),
                ),
                FlatButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {},
                    child: Text("Forgot password",
                        style:
                            TextStyle(fontSize: 16, color: Colors.blueGrey))),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Divider(color: Colors.blueGrey)),
                ),
                Container(
                  child: Text("OR", style: TextStyle(color: Colors.blueGrey)),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Divider(color: Colors.blueGrey)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: new RaisedButton(
                          padding: EdgeInsets.only(
                              top: 3.0, bottom: 3.0, left: 3.0, right: 18),
                          color: const Color(0xFF4285F4),
                          onPressed: () {},
                          child: new Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              new Image.asset(
                                'assets/images/google-logo.png',
                                height: 48.0,
                              ),
                              new Container(
                                  padding:
                                      EdgeInsets.only(left: 10.0, right: 10.0),
                                  child: new Text(
                                    "Sign in with Google",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: new RaisedButton(
                          padding:
                              EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0),
                          color: const Color(0xFF6080C4),
                          onPressed: () {},
                          child: new Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              new Image.asset(
                                'assets/images/facebook-logo.png',
                                height: 48.0,
                              ),
                              new Container(
                                  padding:
                                      EdgeInsets.only(left: 10.0, right: 10.0),
                                  child: new Text(
                                    "Sign in with Facebook",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          )),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}
