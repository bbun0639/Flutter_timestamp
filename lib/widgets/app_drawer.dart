import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll // through the options in the drawer if there isn't enough vertical // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'User01@gmail.com',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.indigoAccent[400], Colors.blue]),
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
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'My Rooms',
              style: TextStyle(fontSize: 16.0),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.blue[400],
            ),
            onTap: () {
              // Update the state of the app
              Navigator.of(context).pushReplacementNamed('/');         
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
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
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
              colors: <Color>[Colors.indigoAccent[400], Colors.blue])),
    ),
    //automaticallyImplyLeading: false, // Never add back button
    centerTitle: true,
    title: Text('TS - Timestamp'),
  );
}