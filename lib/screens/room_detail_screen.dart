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
    final roomId = ModalRoute.of(context).settings.arguments as String; // is the id!
    final loadedRoom = Provider.of<Rooms>(context, listen: false).findById(roomId); //which product was loaded**
    //**default is true - this widget of this page will not rebuild if notifyListeners is called = use data at one time (not active listener)
    //.items //context channels to use provider //get we know we get 'items' there
    //.firstWhere((roo) => roo.id == roomId); //'firstWhere' to get specific ID //if ID of the product I'm looking at is equal to the productID ,got here to my route
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(loadedRoom.title,),
      ),
    );
  }
}
