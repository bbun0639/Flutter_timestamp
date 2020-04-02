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
                  colors: <Color>[Colors.indigoAccent[400], Colors.blue])),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                    child: Row(children: <Widget>[
                      Text(
                        'Subject: ',
                        style: new TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        loadedRoom.subject,
                        style: new TextStyle(fontSize: 18.0),
                      ),
                      Spacer(),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                    child: Row(children: <Widget>[
                      Text(
                        'Section: ',
                        style: new TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        loadedRoom.section,
                        style: new TextStyle(fontSize: 18.0),
                      ),
                      Spacer(),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                    child: Row(children: <Widget>[
                      Text(
                        'Room: ',
                        style: new TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        loadedRoom.roomNum,
                        style: new TextStyle(fontSize: 18.0),
                      ),
                      Spacer(),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                    child: Row(children: <Widget>[
                      Text(
                        'Buildng: ',
                        style: new TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        loadedRoom.building,
                        style: new TextStyle(fontSize: 18.0),
                      ),
                      Spacer(),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Timestamp: ',
                          style: new TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
