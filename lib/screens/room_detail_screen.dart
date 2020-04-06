import 'package:flutter/material.dart';
//import 'package:flutter_appgit/widgets/rooms_card.dart';
import 'package:provider/provider.dart';

import '../providers/rooms.dart';

class RoomDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProductDetailScreen(this.title, this.price); //property(title) & argument in the constructor

  static const routeName = '/room-detail';

  @override
  Widget build(BuildContext context) {
    final roomId =
        ModalRoute.of(context).settings.arguments as String; // is the id!
    final loadedRoom = Provider.of<Rooms>(context, listen: false)
        .findById(roomId); //which product was loaded**
    //**default is true - this widget of this page will not rebuild if notifyListeners is called = use data at one time (not active listener)
    //.items //context channels to use provider //get we know we get 'items' there
    //.firstWhere((roo) => roo.id == roomId); //'firstWhere' to get specific ID //if ID of the product I'm looking at is equal to the productID ,got here to my route

    return Scaffold(
      appBar: AppBar(
        title: Text(
          loadedRoom.subject,
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
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Container(
                  child: Card(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 0.0, bottom: 4.0),
                            child: Row(children: <Widget>[
                              Text(
                                loadedRoom.subject,
                                style: new TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                            ]),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 4.0),
                            child: Row(children: <Widget>[
                              Text(
                                'Section: ',
                                style: new TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                loadedRoom.section,
                                style: new TextStyle(fontSize: 18.0),
                              ),
                              Spacer(),
                            ]),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 4.0),
                            child: Row(children: <Widget>[
                              Text(
                                'Room: ',
                                style: new TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                loadedRoom.roomNum,
                                style: new TextStyle(fontSize: 18.0),
                              ),
                              Spacer(),
                            ]),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 4.0),
                            child: Row(children: <Widget>[
                              Text(
                                'Buildng: ',
                                style: new TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                loadedRoom.building,
                                style: new TextStyle(fontSize: 18.0),
                              ),
                              Spacer(),
                            ]),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 0.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Timestamp: ',
                                  style: new TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  loadedRoom.ts,
                                  style: new TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: <Widget>[
                      MenuIcon(Icons.filter_center_focus, 'Timestamp', Colors.blue),
                      MenuIcon(Icons.event_note, 'Report', Colors.red),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
