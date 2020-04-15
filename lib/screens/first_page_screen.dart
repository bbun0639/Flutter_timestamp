import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

import '../screens/take_face_screen.dart';

class FirstPageState extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();

  static const routeName = '/1st-page';

  final String FullName = '';
}

class _FirstPageState extends State<FirstPageState> {
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
            './images/1st-header.png',
            fit: BoxFit.fitWidth,
          ),
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
                          "STEP 1",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Center(
                        child: Text(
                          "Please enter your name",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text(
                          "The app will collect data in the first time",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 30.0),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(5),
                              ),
                              SizedBox(height: 5.0),
                              TextFormField(
                                decoration: new InputDecoration(
                                    hintText: 'Full Name',
                                    icon: new Icon(Icons.person)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Padding(padding: EdgeInsets.only(left: 120.0)),
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
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(TakeFaceState.routeName);
                    print('Submit Pressed');
                  },
                  color: Colors.pink[400],
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  child: new Text('Next',
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold)),
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
