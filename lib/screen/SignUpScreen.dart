import 'package:flutter/material.dart';
import 'package:flutter_ride_share/screen/LoginScreen.dart';
import 'package:flutter_ride_share/screen/widgets/BaseAppBar.dart';
import 'package:flutter_ride_share/transition/SlideIn.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {

  final emailTextFeild = TextField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Please enter email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
  );
  final phoneTextFeild = TextField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Phone number e.g: +1-204-3305442",
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
      print("Hello");
    },
    color: Colors.blueGrey,
    child: const Text('Sign Up',
        style: TextStyle(fontSize: 20, color: Colors.white)),
  );

  @override
  Widget build(BuildContext context) {
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
                margin: EdgeInsets.only(left: 15, right: 15,top: 10),
                child: phoneTextFeild,
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
                          SlideIn(page: LoginScreen(title: "Login")));
                    },
                    child: Text("login",
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
            ],
          ),
        ),
      ),
    );
  }
}
