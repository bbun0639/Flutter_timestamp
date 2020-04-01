// import 'package:flutter/material.dart';
// import 'package:flutter_appgit/screens/rooms_overview_screen.dart';
// //import '../models/room.dart';
// import '../widgets/room_index.dart';

// // class RoomIndex extends StatelessWidget {
// //   final String id;
// //   final String subject;
// //   final String section;
// //   final String building;
// //   final int roomNum;
// //   final String timeStamp;

// //   //Provide the constructor here
// //   RoomIndex(this.id, this.subject, this.section, this.building, this.roomNum, this.timeStamp);
// //}

// class Home extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _HomeState();
//   }
// }

// class _HomeState extends State<Home> {
//   int _currentIndex = 0;
//   final List<Widget> _children = [
//     RoomsOverviewScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("TS - Timestamp"),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.centerLeft,
//                   end: Alignment.centerRight,
//                   colors: <Color>[Colors.indigoAccent[400], Colors.blue])),
//         ),
//       ),
//       drawer: Drawer(
//         // Add a ListView to the drawer. This ensures the user can scroll
//         // through the options in the drawer if there isn't enough vertical
//         // space to fit everything.
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Text(
//                 'User01@gmail.com',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   color: Colors.white,
//                 ),
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 gradient: LinearGradient(
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                     colors: <Color>[Colors.indigoAccent[400], Colors.blue]),
//               ),
//             ),
//             ListTile(
//               title: Text(
//                 'Dashboard',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//               leading: Icon(
//                 Icons.dashboard,
//                 color: Colors.red[400],
//               ),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text(
//                 'My Rooms',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//               leading: Icon(
//                 Icons.home,
//                 color: Colors.blue[400],
//               ),
//               onTap: () {
//                 // Update the state of the app

//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text(
//                 'Notifications',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//               leading: Icon(
//                 Icons.notifications_active,
//                 color: Colors.yellow[700],
//               ),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//       body: _children[_currentIndex],
//       // bottomNavigationBar: BottomNavigationBar(
//       //     onTap: onTabTapped,
//       //     currentIndex: _currentIndex,
//       //     items: [
//       //       BottomNavigationBarItem(
//       //         icon: new Icon(Icons.home),
//       //         title: new Text(
//       //           "Home",
//       //           style: TextStyle(fontSize: 16.0),
//       //         ),
//       //       ),
//       //       BottomNavigationBarItem(
//       //         icon: new Icon(Icons.location_on),
//       //         title: new Text(
//       //           "Map",
//       //           style: TextStyle(fontSize: 16.0),
//       //         ),
//       //       ),
//       //       BottomNavigationBarItem(
//       //         icon: new Icon(Icons.history),
//       //         title: new Text(
//       //           "Reported",
//       //           style: TextStyle(fontSize: 16.0),
//       //         ),
//       //       ),
//       //     ]),
//     );
//   }

//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
// }

// //**Remember ListTile used in ListView - GridTile built-in widget which can be use anywhere*/
