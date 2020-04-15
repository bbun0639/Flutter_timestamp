import 'package:flutter/material.dart';
import '../screens/create_room_screen.dart';
import '../widgets/app_drawer.dart';

class EmptyRoom extends StatefulWidget {
  @override
  _EmptyRoom createState() => _EmptyRoom();

  static const routeName = '/empty-room';
}

class _EmptyRoom extends State<EmptyRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TS - Timestamp',
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.indigoAccent[400], Colors.blue]),
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Container(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 120.0),
              Image.asset(
                './images/searching.png',
                fit: BoxFit.fitWidth,
                height: 200,
                width: 200,
              ),
              Text(
                'You don' + "'" + 't have any room yet, \nPlease **create//join** the room',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        backgroundColor: Colors.pink[400],
        icon: const Icon(Icons.add),
        label: const Text('Create Room'),
        onPressed: () {
          Navigator.of(context)
                        .pushReplacementNamed(CreateRoom.routeName);
                    print('Submit Pressed');
        },
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

