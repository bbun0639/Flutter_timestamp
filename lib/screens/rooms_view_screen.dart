import 'package:flutter/material.dart';

import '../widgets/rooms_itemBuilder.dart';



class RoomsViewScreen extends StatelessWidget {
  //final property hold a list of products
  //final List<Product> loadedProduct = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false, // Never add back button
        centerTitle: true,
        title: Text('TS - Timestamp'),
      ),
      //drawer: AppDrawer(),
      body: RoomsCard(), //don't get as an argument but get itself by provider
    );
  }
}
