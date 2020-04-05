import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/room_detail_screen.dart';
import '../providers/room.dart'; //not product's'*

class RoomItem extends StatelessWidget {
  // final String id;
  // final String title;

  // //Provide the constructor here
  // ProductItem(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final room = Provider.of<Room>(context, listen: false);
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .pushNamed(RoomDetailScreen.routeName, arguments: room.id);
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                  child: Row(children: <Widget>[
                    Text(
                      room.subject + ' | ' + 'Section ' + room.section,
                      style: new TextStyle(fontSize: 24.0),
                    ),
                    Spacer(),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 30.0),
                  child: Row(children: <Widget>[
                    Text(
                      room.roomNum + ' ' + room.building,
                      style: new TextStyle(fontSize: 16.0),
                      overflow: TextOverflow.fade,
                    ),
                    Spacer(),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Timestamp : " + room.ts,
                        style: new TextStyle(fontSize: 16.0),
                      ),
                      Spacer(),
                      Icon(
                        Icons.location_on,
                        color: Color.fromRGBO(0, 100, 255, 80),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 200.0, // has the effect of softening the shadow
            spreadRadius: -50.0, // has the effect of extending the shadow
          )
        ],
      ),
    );
  }
}

//**Remember ListTile used in ListView - GridTile built-in widget which can be use anywhere*/
