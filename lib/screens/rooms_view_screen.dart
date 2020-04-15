import 'package:flutter/material.dart';

import '../widgets/rooms_itemBuilder.dart';
import '../widgets/app_drawer.dart';

class RoomsViewScreen extends StatelessWidget {
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
      floatingActionButton: BottomSheetWidget(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

//<-------------------------------------------------------------->

class BottomSheetWidget extends StatefulWidget {
  @override
  _BottomSheetWidget createState() => _BottomSheetWidget();
}

class _BottomSheetWidget extends State<BottomSheetWidget> {
  bool showFab = true;
  @override
  Widget build(BuildContext context) {
    return showFab
        ? FloatingActionButton.extended(
            elevation: 4.0,
            backgroundColor: Colors.pink[400],
            icon: const Icon(Icons.add),
            label: const Text('Join Room'),
            onPressed: () {
              var bottomSheetController = showBottomSheet(
                context: context,
                builder: (context) => Container(
                  color: Colors.black,
                  height: 0,
                ),
              );
              showFoatingActionButton(false);
              bottomSheetController.closed.then((value) {
                showFoatingActionButton(true);
              });
            },
          )
        : Container(
            margin: const EdgeInsets.only(top: 5, left: 30, right: 30),
            height: 200,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                          ),
                        ]),
                    child: Column(children: [
                      DecoratedTextField(),
                      SheetButton(),
                    ]),
                  )
                ]),
          );
  }

  void showFoatingActionButton(bool value) {
    setState(() {
      showFab = value;
    });
  }
}

//<-------------------------TextFieldBox----------------------------->

class DecoratedTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      //margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: <Widget>[
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration.collapsed(
              hintText: 'Enter a code',
            ),
          ),
        ],
      ),
    );
  }
}

class SheetButton extends StatefulWidget {
  _SheetButtonState createState() => _SheetButtonState();
}

class _SheetButtonState extends State<SheetButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 4.0,
      color: Colors.pink[400],
      onPressed: () {
        //
      },
      child: Text(
        'Join',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
