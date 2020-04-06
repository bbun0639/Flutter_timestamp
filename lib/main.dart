import 'package:flutter/material.dart';
import 'package:flutter_appgit/screens/sign_up_screen.dart';
import 'package:provider/provider.dart';

import './providers/rooms.dart';

import './screens/rooms_view_screen.dart';
import './screens/room_detail_screen.dart'; //want to provide data here
import './screens/sign_up_screen.dart';
import './screens/sign_in_screen.dart';
import './screens/first_page_screen.dart';
import './screens/create_room_screen.dart';

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
          fontFamily: 'Lato',
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.black.withOpacity(0)),
        ),
        home: SignInState(),
        routes: {
          RoomsViewScreen.routeName: (ctx) => RoomsViewScreen(),
          RoomDetailScreen.routeName: (ctx) => RoomDetailScreen(),
          SignInState.routeName: (ctx) => SignInState(),
          SignUpState.routeName: (ctx) => SignUpState(),
          FirstPageState.routeName: (ctx) => FirstPageState(),
          CreateRoom.routeName: (ctx) => CreateRoom(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
