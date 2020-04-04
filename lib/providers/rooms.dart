import 'package:flutter/material.dart';
import 'package:flutter_appgit/providers/room.dart';

import './room.dart';

class Rooms with ChangeNotifier {
  //ChangeNotifier bc that gives access to a notifyListeners method
  //define a list of product

  //Hard Code room list
  List<Room> _roomsList = [
    Room(
      id: "r1",
      subject: "CPE492 - Project",
      section: "001",
      roomNum: "422",
      building: "(30th Building)",
      ts: "09:30-09:45 am",
    ),
    Room(
      id: "r2",
      subject: "Engi Drawing",
      section: "006",
      roomNum: "401-4",
      building: "(4th Floor B.)",
      ts: "13:00-13:15 am",
    ),
    Room(
      id: "r6",
      subject: "CPE361 - Algo",
      section: "008",
      roomNum: "402",
      building: "(30th Building)",
      ts: "08:00-08:15 am",
    ),
    Room(
      id: "r4",
      subject: "OS - Operating",
      section: "009",
      roomNum: "512",
      building: "(30th Building)",
      ts: "11:00-11:15 am",
    ),
  ]; //not final list bc it will change over time //direct addr to this list

  List<Room> get roomsList {
    //when products change, I actually have to call a certain method to tell all listeners of this provider
    return [..._roomsList];
  }

  Room findById(String id) {
    return _roomsList.firstWhere((roo) => roo.id == id);
  }

  void addRoom() {
    //_roomsList.add(value); //Dont really know how to add products
    notifyListeners();
  }
}
