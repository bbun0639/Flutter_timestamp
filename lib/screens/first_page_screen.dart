import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class FirstPageState extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();

  static const routeName = '/1st-page';
}

class _FirstPageState extends State<FirstPageState>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
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
            new Image.asset(
              './images/header.png',
              fit: BoxFit.fitWidth,
            ),
            new Center(
              child: new Container(
                height: 260.0,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                  child: new Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 6.0,
                    margin: EdgeInsets.only(right: 15.0, left: 15.0),
                    child: new Wrap(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(20),
                        ),
                        Center(
                          child: Text(
                            "Please Enter your Name",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                          ),
                        ),
                        Center(
                          child: Text(
                            "The app will collect data in the first time",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5),
                                ),
                                SizedBox(height: 10.0),
                                TextFormField(
                                  decoration: new InputDecoration(
                                      hintText: 'Full Name',
                                      icon: new Icon(Icons.person)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 120.0)),
                      ],
                    ),
                  ),
                ),
                padding: EdgeInsets.only(bottom: 20),
              ),
            ),
            new Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 220.0)),
                  RaisedButton(
                    onPressed: () {
                      print('Submit Pressed');
                    },
                    color: Colors.pink[400],
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: new Text('Submit',
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
