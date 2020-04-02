import 'package:flutter/material.dart';

import '../widgets/rooms_itemBuilder.dart';
import '../widgets/app_drawer.dart';

class RoomsViewScreen extends StatelessWidget {
  //final property hold a list of products
  //final List<Product> loadedProduct = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.indigoAccent[400], Colors.blue])),
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
