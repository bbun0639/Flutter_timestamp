import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/rooms.dart';

import './screens/rooms_view_screen.dart';
import './screens/room_detail_screen.dart'; //want to provide data here
import './screens/sign_up_screen.dart';
import './screens/sign_in_screen.dart';
import './screens/first_page_screen.dart';
import './screens/create_room_screen.dart';
import './screens/take_face_screen.dart';
import './screens/empty_room_screen.dart';
import './screens/key_room_screen.dart';
import './screens/manager_room_detail_screen.dart';
import './screens/time_list_screen.dart';

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
            backgroundColor: Colors.black.withOpacity(1)),
        ),
        home: SignInState(),
        routes: {
          RoomsViewScreen.routeName: (ctx) => RoomsViewScreen(),
          RoomDetailScreen.routeName: (ctx) => RoomDetailScreen(),
          SignInState.routeName: (ctx) => SignInState(),
          SignUpState.routeName: (ctx) => SignUpState(),
          FirstPageState.routeName: (ctx) => FirstPageState(),
          CreateRoom.routeName: (ctx) => CreateRoom(),
          TakeFaceState.routeName: (ctx) => TakeFaceState(),
          EmptyRoom.routeName: (ctx) => EmptyRoom(),
          KeyRoom.routeName: (ctx) => KeyRoom(),
          ManagerRoomDetailScreen.routeName: (ctx) => ManagerRoomDetailScreen(),
          TimeList.routeName: (ctx) => TimeList(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
