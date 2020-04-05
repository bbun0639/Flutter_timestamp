import 'package:flutter/material.dart';
import 'package:flutter_appgit/screens/sign_up_screen.dart';
import 'package:provider/provider.dart';

import './providers/rooms.dart';

import './screens/rooms_view_screen.dart';
import './screens/room_detail_screen.dart'; //want to provide data here
import './screens/sign_up_screen.dart';
import './screens/sign_in_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Rooms(),
        ),
      ],
      child: MaterialApp(
        title: 'TS - Timestamp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RoomsViewScreen(),
        routes: {
          RoomDetailScreen.routeName: (ctx) => RoomDetailScreen(),
          SignInState.routeName: (ctx) => SignInState(),
          SignUpState.routeName: (ctx) => SignUpState(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
