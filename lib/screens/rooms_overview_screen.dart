import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
import '../models/room.dart';
import '../widgets/room_index.dart';

// class RoomsOverviewScreen extends StatelessWidget {
//   //final property hold a list of products
//   final List<Room> loadedRoom = [
//     Room(
//       id: 'r1',
//       subject: 'CPE101',
//       section: '001',
//       building: '30th buliding',
//       roomNum: 422,
//       timeStamp: '09:00am - 09:30am',
//     ),
//     Room(
//       id: 'r2',
//       subject: 'CPE201',
//       section: '004',
//       building: '30th buliding',
//       roomNum: 516,
//       timeStamp: '11:00am - 11:30am',
//     ),

//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Timestamp'),
//       ),
//       body: GridView.builder(
//         padding: const EdgeInsets.all(10.0), //padding around the grid
//         itemCount: loadedRoom.length,
//         itemBuilder: (ctx, i) => RoomIndex(
//           loadedRoom[i].id,
//           loadedRoom[i].subject,
//           loadedRoom[i].section,
//           loadedRoom[i].building,
//           loadedRoom[i].roomNum,
//           loadedRoom[i].timeStamp,
//         ), //recieve context & index of item and can go back to the grid that we want to render
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           //gridDelegate allow to define grid generally
//           crossAxisCount: 2,
//           childAspectRatio: 3 / 2,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//         ),
//       ),
//     );
//   }
// }

class RoomsView extends StatelessWidget {
  final List<Room> roomsList = [
    Room(
      "CPE 492 | Section 001",
      "422 (30th Building)",
      "Timestamp: 09:30-09:45 am",
    ),
    Room(
      "Drawing 100 | Section 06",
      "401-4 (4th Floor B.)",
      "Timestamp: 13:00-13:15 am",
    ),
    Room(
      "Algo 361 | Section 008",
      "402 (30th Building)",
      "Timestamp: 08:00-08:15 am",
    ),
    Room(
      "OS 305 | Section 009",
      "512 (30th Building)",
      "Timestamp: 11:00-11:15 am",
    ),
    Room("CPE 25 | Section 001", "Gear47", "Timestamp: 09:30-09:45 am"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: roomsList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildTripCard(context, index)),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final room = roomsList[index];
    return new Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(children: <Widget>[
                  Text(
                    room.title,
                    style: new TextStyle(fontSize: 24.0),
                  ),
                  Spacer(),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(children: <Widget>[
                  Text(
                    room.building,
                    style: new TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                ]),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 4.0, bottom: 80.0),
              //   child: Row(children: <Widget>[
              //     Text(
              //         "${DateFormat('dd/MM/yyyy').format(room.startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(room.endDate).toString()}"),
              //     Spacer(),
              //   ]),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      room.ts,
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    Spacer(),
                    Icon(Icons.location_on),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 100.0, // has the effect of softening the shadow
            spreadRadius: -60.0, // has the effect of extending the shadow
          )
        ],
      ),
    );
  }
}
