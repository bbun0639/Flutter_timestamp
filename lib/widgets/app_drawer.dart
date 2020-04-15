import 'package:flutter/material.dart';
import 'package:flutter_appgit/screens/empty_room_screen.dart';
import 'package:flutter_appgit/screens/first_page_screen.dart';
import 'package:flutter_appgit/screens/key_room_screen.dart';
import 'package:flutter_appgit/screens/manager_room_detail_screen.dart';
import 'package:flutter_appgit/screens/rooms_view_screen.dart';
import 'package:flutter_appgit/screens/sign_in_screen.dart';
import 'package:flutter_appgit/screens/create_room_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll // through the options in the drawer if there isn't enough vertical // space to fit everything.
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Image.asset(
                          'images/user.png',
                          width: 80.0,
                          height: 80.0,
                        ),
                        new Text(
                          'pathomphob.sun@gmail.com',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        new Text(
                          'User',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[Colors.indigoAccent[400], Colors.blue],
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Dashboard',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  leading: Icon(
                    Icons.dashboard,
                    color: Colors.red[400],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'My Rooms',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.indigoAccent,
                  ),
                  onTap: () {
                    // Update the state of the app
                    Navigator.of(context)
                        .pushReplacementNamed(RoomsViewScreen.routeName);
                  },
                ),
                ListTile(
                  title: Text(
                    'Room Management',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  leading: Icon(
                    Icons.storage,
                    color: Colors.cyan,
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(EmptyRoom.routeName);
                  },
                ),
                ListTile(
                  title: Text(
                    'Notifications',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  leading: Icon(
                    Icons.notifications_active,
                    color: Colors.yellow[700],
                  ),
                  onTap: () {
                    //
                  },
                ),
                ListTile(
                  title: Text(
                    'SignIn',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  leading: Icon(
                    Icons.people,
                    color: Colors.red[700],
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(SignInState.routeName);
                  },
                ),
                ListTile(
                  title: Text(
                    '1st-Page',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  leading: Icon(
                    Icons.flag,
                    color: Colors.greenAccent[700],
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(FirstPageState.routeName);
                  },
                ),
                ListTile(
                  title: Text(
                    'Create Room',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  leading: Icon(
                    Icons.create_new_folder,
                    color: Colors.red[700],
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(CreateRoom.routeName);
                  },
                ),
                ListTile(
                  title: Text(
                    'Room Key',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  leading: Icon(
                    Icons.vpn_key,
                    color: Colors.deepOrange,
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(KeyRoom.routeName);
                  },
                ),
                ListTile(
                  title: Text(
                    'Management Detail Room',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  leading: Icon(
                    Icons.link,
                    color: Colors.cyan,
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(
                        ManagerRoomDetailScreen.routeName);
                  },
                ),
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.exit_to_app,
                        color: Colors.indigo,
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(SignInState.routeName);
                      },
                      title: Text(
                        'Log out',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void gradientAppbar() {
  AppBar(
    flexibleSpace: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Colors.indigoAccent[400], Colors.red])),
    ),
    //automaticallyImplyLeading: false, // Never add back button
    centerTitle: true,
    title: Text('TS - Timestamp'),
  );
}
