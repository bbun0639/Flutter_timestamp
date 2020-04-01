import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//import '../models/product.dart';
import './room_item.dart';
import '../providers/rooms.dart';

class RoomsCard extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    //Provider.of<Products>(context) - **Here I don't want to set listen to false but want to listen to changes
    final roomsData = Provider.of<Rooms>(context); //<> to let know to which type of data you want to listen in to //final for obj based on provide class
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