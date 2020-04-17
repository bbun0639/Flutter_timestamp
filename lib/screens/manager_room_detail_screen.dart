import 'package:flutter/material.dart';
import 'package:flutter_appgit/widgets/app_drawer.dart';

import 'package:f_datetimerangepicker/f_datetimerangepicker.dart';

class ManagerRoomDetailScreen extends StatefulWidget {
  @override
  _ManagerRoomDetailScreen createState() => _ManagerRoomDetailScreen();

  static const routeName = '/manager-room-detail';
}

class _ManagerRoomDetailScreen extends State<ManagerRoomDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TS - Timestamp'),
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
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
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
                                    fontSize: 26.0,
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
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '001',
                                style: new TextStyle(fontSize: 16.0),
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
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '422 TEST',
                                style: new TextStyle(fontSize: 16.0),
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
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '30th Building',
                                style: new TextStyle(fontSize: 16.0),
                              ),
                              Spacer(),
                            ]),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 4.0),
                            child: Row(children: <Widget>[
                              Text(
                                'TS at: ',
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "...",
                                style: new TextStyle(fontSize: 16.0),
                              ),
                              Spacer(),
                            ]),
                          ),
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
                      //<----------------------------------->
                      Card(
                        elevation: 6.0,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: InkWell(
                          onTap: () {
                            DateTimeRangePicker(
                                startText: "Start",
                                endText: "End",
                                doneText: "Yes",
                                cancelText: "Cancel",
                                interval: 5,
                                initialStartTime: DateTime.now(),
                                initialEndTime: DateTime.now()
                                    .add(Duration(days: 0, hours: 1)),
                                mode: DateTimeRangePickerMode.dateAndTime,
                                // minimumTime:
                                //     DateTime.now().subtract(Duration(days: 1)),
                                // maximumTime:
                                //     DateTime.now().add(Duration(days: 25)),
                                onConfirm: (start, end) {
                                  print(start);
                                  print(end);
                                  Navigator.of(context).pushReplacementNamed(
                                      ManagerRoomDetailScreen.routeName);
                                }).showPicker(context);
                          },
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Material(
                                        color: Colors.blue,
                                        shape: CircleBorder(),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Icon(
                                            Icons.update,
                                            size: 30.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 10.0)),
                                      Text(
                                        'Setting Time',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      Text(
                                        'Set the time schedule',
                                        style: TextStyle(color: Colors.black45),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //<----------------------------------->

                      Card(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Material(
                                        color: Colors.red,
                                        shape: CircleBorder(),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Icon(
                                            Icons.vpn_key,
                                            size: 30.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 10.0)),
                                      Text(
                                        'Room Key',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      Text(
                                          'Share code to invite people into this room',
                                          style:
                                              TextStyle(color: Colors.black45)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //<----------------------------------->

                      Card(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Material(
                                        color: Colors.teal,
                                        shape: CircleBorder(),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Icon(
                                            Icons.people,
                                            size: 30.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 10.0)),
                                      Text(
                                        'Room Key',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      Text('See all user in this room',
                                          style:
                                              TextStyle(color: Colors.black45)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //<----------------------------------->

                      Card(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Material(
                                        color: Colors.amber,
                                        shape: CircleBorder(),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Icon(
                                            Icons.assignment,
                                            size: 30.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 10.0)),
                                      Text(
                                        'Report',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      Text('The reported sheet of every user',
                                          style:
                                              TextStyle(color: Colors.black45)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      // MenuIcon(Icons.update, 'Setting Time', Colors.blue,
                      //     'Set the time schedule'),
                      // MenuIcon(Icons.vpn_key, 'Room Key', Colors.red,
                      //     'Share code to invite people into this room'),
                      // MenuIcon(Icons.people, 'Users', Colors.teal,
                      //     'See all user in this room'),
                      // MenuIcon(Icons.assignment, 'Report', Colors.amber,
                      //     'The reported sheet of every user'),
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
  final Function onClick;

  MenuIcon(this._icon, this._title, this._color, this._descripe, this.onClick);

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
