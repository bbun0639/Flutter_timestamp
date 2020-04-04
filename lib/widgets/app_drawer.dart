import 'package:flutter/material.dart';
import 'package:flutter_appgit/screens/signin_screen.dart';
import 'package:flutter_appgit/screens/signup_screen.dart';

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
                          'User01@gmail.com',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        new Text(
                          'Admin',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontStyle: FontStyle.italic
                          ),
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
                    color: Colors.indigoAccent,
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
                        .pushReplacementNamed(TabSignIn.routeName);
                  },
                ),
                ListTile(
                  title: Text(
                    'SignUp',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  leading: Icon(
                    Icons.people,
                    color: Colors.red[700],
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(TabSignUp.routeName);
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
                      title: Text('Log out'),
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
              colors: <Color>[Colors.indigoAccent[400], Colors.blue])),
    ),
    //automaticallyImplyLeading: false, // Never add back button
    centerTitle: true,
    title: Text('TS - Timestamp'),
  );
}
