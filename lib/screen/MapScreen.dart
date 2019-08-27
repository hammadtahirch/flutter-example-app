import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ride_share/screen/widgets/DrawerWidget.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  MapScreen({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<MapScreen> {
  List<String> litems = [
                        "1330 Chancellor Drive",
                        "35 Dalemore lane",
                        "1352 Chancellor Drive",
                        "1372 Chancellor Drive"
                        "1330 Chancellor Drive",
                        "35 Dalemore lane",
                        "1352 Chancellor Drive",
                        "1372 Chancellor Drive"
                        "1330 Chancellor Drive",
                        "35 Dalemore lane",
                        "1352 Chancellor Drive",
                        "1372 Chancellor Drive"
                        "1330 Chancellor Drive",
                        "35 Dalemore lane",
                        "1352 Chancellor Drive",
                        "1372 Chancellor Drive"
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(49.812529, -97.189517),
    zoom: 15,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
        drawer: new DrawerWiget(),
        body: new Stack(
          children: <Widget>[
            Container(
              child: GoogleMap(
                mapType: MapType.normal,
                myLocationEnabled: true,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            Positioned(
                left: 30,
                top: 80,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blueGrey,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    tooltip: "menu",
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                  ),
                )),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Text("Good after noon! Hammad Tahir",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey)),
                        ),
                        Divider(color: Colors.blueGrey),
                        Container(
                          width: 350,
                          height: 50,
                          margin: const EdgeInsets.only(top: 5.0,bottom: 0),
                          child: RaisedButton(
                            onPressed: () {
                              print("pressme");
                            },
                            color: Colors.blueGrey,
                            textColor: Colors.white,
                            child: const Text('Where to ?',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ),
                       Expanded(
                         flex: 1,
                         child: ListView.builder(
                             scrollDirection: Axis.vertical,
                             shrinkWrap: true,
                             itemCount: litems.length,
                             itemBuilder: (BuildContext ctxt, int index) {
                               return new Container(
                                   child:Text(
                                     litems[index],
                                     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                               );
                             }),
                       ),


                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}
