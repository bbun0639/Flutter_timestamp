import 'package:flutter/material.dart';
import 'package:flutter_appgit/widgets/app_drawer.dart';
import 'package:provider/provider.dart';

import '../providers/rooms.dart';
import '../providers/room.dart';

class TimeList extends StatefulWidget {
  @override
  _TimeList createState() => _TimeList();

  static const routeName = '/time-list-page';
}

class _TimeList extends State<TimeList> {
  //final property hold a list of products
  //final List<Product> loadedProduct = [];

  static const routeName = '/rooms-view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.indigoAccent[400], Colors.blue]),
          ),
        ),
        title: Text('TS - Timestamp'),
        centerTitle: true,
        //automaticallyImplyLeading: false, // Never add back button
      ),
      drawer: AppDrawer(),
      body: RoomsCard(), //don't get as an argument but get itself by provider
    );
  }
}

class RoomsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Provider.of<Products>(context) - **Here I don't want to set listen to false but want to listen to changes
    final roomsData = Provider.of<Rooms>(
        context); //<> to let know to which type of data you want to listen in to //final for obj based on provide class
    final rooms = roomsData.roomsList;

    return ListView.builder(
      padding: const EdgeInsets.all(10.0), //padding around the grid
      itemCount: rooms.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        //builder: (ctx) => rooms[i],  //Provideing a single product here //this will return a single product item as it's store in the products.dart
        //**Since providing a single product ^ here  ก็ไม่จำเป็นต้อง recieve product data มา*/
        value: rooms[i],
        child: RoomItem(
            // products[i].id,
            // products[i].title,
            ),
        //recieve context & index of item and can go back to the grid that we want to render
      ),
    );
  }
}

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
        elevation: 6.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            //
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
                      IconButton(
                          color: Colors.blue[600],
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Dialog().asyncConfirmDialog(
                                context,
                                'Are you sure ?',
                                'This action will delete your task.');
                          }),
                      IconButton(
                          color: Colors.deepOrange,
                          icon: Icon(Icons.restore_from_trash),
                          onPressed: () {
                            Dialog().asyncConfirmDialog(
                                context,
                                'Are you sure ?',
                                'This action will delete your task.');
                          })
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

class Dialog {
  asyncConfirmDialog(BuildContext context, String title, String descrip) async {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button for close dialog!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(descrip),
          actions: <Widget>[
            FlatButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: const Text('ACCEPT'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
