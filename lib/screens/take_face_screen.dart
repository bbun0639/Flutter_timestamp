import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

import '../screens/rooms_view_screen.dart';

class TakeFaceState extends StatefulWidget {
  @override
  _TakeFaceState createState() => _TakeFaceState();

  static const routeName = '/take-camera-page';

  final String FullName = '';
}

class _TakeFaceState extends State<TakeFaceState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          'TS - Timestamp',
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.indigoAccent[400], Colors.blue]),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            './images/2nd-header.png',
            fit: BoxFit.fitWidth,
          ),
          Text("Hello, Earth!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.black)),
          Center(
            child: Container(
              height: 260.0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  elevation: 6.0,
                  margin: EdgeInsets.only(right: 15.0, left: 15.0),
                  child: Wrap(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10)),
                      Center(
                        child: Text(
                          "STEP 2",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text(
                          "Please take the photo",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text(
                          "This term for face recognition service",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Center(
                        child: Text(
                          "1.เลือกมุมถ่ายภาพที่มีแสงสว่าง",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text(
                          "2.จัดใบหน้าให้ตรงและอยู่ในกรอบถ่ายภาพ",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              padding: EdgeInsets.only(bottom: 20),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 220.0)),
                SizedBox.fromSize(
                  size: Size(56, 56),
                  child: ClipOval(
                    child: Material(
                      color: Colors.pink[400],
                      child: InkWell(
                        splashColor: Colors.pink[50],
                        onTap: () {
                          //pressed
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ), // icon
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

//<---------------------------------------------------->

  double _width = 0.0;
  double _height = 0.0;

  Widget getOverlayWidget() {
    return new Container(
      alignment: Alignment.bottomCenter,
      child: new Container(
        height: 100.0,
        width: _width,
        color: Colors.cyan.withOpacity(0.4),
      ),
    );
  }

  Widget getScrollableBody() {
    return SingleChildScrollView(
      child: new Column(
        children: <Widget>[
          new Container(
            height: _height * .65,
            color: Colors.yellow,
          ),
          new Container(
            height: _height * .65,
            color: Colors.brown,
          ),
          new Container(
            margin: EdgeInsets.only(bottom: 100.0),
            height: _height * .65,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
