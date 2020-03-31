import 'package:flutter/material.dart';
import 'package:flutter_appgit/screens/rooms_overview_screen.dart';
import '../models/room.dart';
import '../widgets/room_index.dart';

// class RoomIndex extends StatelessWidget {
//   final String id;
//   final String subject;
//   final String section;
//   final String building;
//   final int roomNum;
//   final String timeStamp;

//   //Provide the constructor here
//   RoomIndex(this.id, this.subject, this.section, this.building, this.roomNum, this.timeStamp);
//}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    RoomsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TS - Timestamp"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.indigoAccent[400], Colors.blue])),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'User01@gmail.com',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.indigoAccent[400], Colors.blue]),
              ),
            ),
            ListTile(
              title: Text('Dashboard'),
              leading: Icon(Icons.dashboard),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('My Rooms'),
              leading: Icon(Icons.home),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Notifications'),
              leading: Icon(Icons.notifications_active),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.location_on),
              title: new Text("Map"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.history),
              title: new Text("Reported"),
            ),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

//**Remember ListTile used in ListView - GridTile built-in widget which can be use anywhere*/
