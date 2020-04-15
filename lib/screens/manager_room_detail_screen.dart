import 'package:flutter/material.dart';
import 'package:flutter_appgit/widgets/app_drawer.dart';
import 'package:provider/provider.dart';

import '../providers/rooms.dart';

class ManagerRoomDetailScreen extends StatefulWidget {
  @override
  _ManagerRoomDetailScreen createState() => _ManagerRoomDetailScreen();

  static const routeName = '/manager-room-detail';
}

class _ManagerRoomDetailScreen extends State<ManagerRoomDetailScreen> {
  @override
  Widget build(BuildContext context) {
    // final roomId =
    //     ModalRoute.of(context).settings.arguments as String; // is the id!
    // final loadedRoom = Provider.of<Rooms>(context, listen: false)
    //     .findById(roomId); //which product was loaded**
    //**default is true - this widget of this page will not rebuild if notifyListeners is called = use data at one time (not active listener)
    //.items //context channels to use provider //get we know we get 'items' there
    //.firstWhere((roo) => roo.id == roomId); //'firstWhere' to get specific ID //if ID of the product I'm looking at is equal to the productID ,got here to my route

    return Scaffold(
      appBar: AppBar(
        title: Text(
            //loadedRoom.subject,
            'TS - Timestamp'),
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
                                'TEST DETAILS',
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
                                '001',
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
                                '422 TEST',
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
                                '30th Building',
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
                                  '00:00am',
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
                    //crossAxisSpacing: 10,
                    //mainAxisSpacing: 10,
                    children: <Widget>[
                      MenuIcon(Icons.edit, 'Set Time', Colors.blue, 'Set the time for the timestamp'),
                      MenuIcon(Icons.code, 'Room Code', Colors.amber, 'Share code to invite people into this room'),
                      MenuIcon(Icons.people, 'Users', Colors.green, 'See all user in this room'),
                      MenuIcon(Icons.event_note, 'Report', Colors.red, 'The reported sheet of every user'),
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
  final String _descripe;

  MenuIcon(this._icon, this._title, this._color, this._descripe);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Material(
                      color: _color,
                      shape: CircleBorder(),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          _icon,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 10.0)),
                    Text(
                      _title,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 22.0,
                      ),
                    ),
                    Text(_descripe, style: TextStyle(color: Colors.black45)),
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

// Widget _buildTile(Widget child, {Function() onTap}) {
//   return Material(
//       elevation: 14.0,
//       borderRadius: BorderRadius.circular(12.0),
//       shadowColor: Color(0x802196F3),
//       child: InkWell(
//           // Do onTap() if it isn't null, otherwise do print()
//           onTap: onTap != null
//               ? () => onTap()
//               : () {
//                   print('Not set yet');
//                 },
//           child: child));
// }
