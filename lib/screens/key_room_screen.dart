import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class KeyRoom extends StatefulWidget {
  @override
  _KeyRoom createState() => _KeyRoom();

  static const routeName = '/key-room';
}

class _KeyRoom extends State<KeyRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            //loadedRoom.subject,
            'this.subject.room'),
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
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,        
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Card(
                        elevation: 6.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          child: Column(children: <Widget>[
                            Padding(padding: EdgeInsets.all(10)),
                            Center(
                              child: Text(
                                "Room Key",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 68,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 10),
                              //margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                              margin: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                'CPE-GEN-001',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuIcon extends StatelessWidget {
  final IconData _icon;
  final String _title;
  final MaterialColor _color;

  MenuIcon(this._icon, this._title, this._color);

  @override
  Widget build(BuildContext context) {
    var index = 600;
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                _icon,
                size: 50.0,
                color: _color[index],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 1.0),
              ),
              Text(_title, style: new TextStyle(fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}
