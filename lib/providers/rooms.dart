import 'package:flutter/material.dart';
import 'package:flutter_appgit/providers/room.dart';


import './room.dart';

class Rooms with ChangeNotifier {
  //ChangeNotifier bc that gives access to a notifyListeners method
  //define a list of product
  List<Room> _roomsList = [
    Room(
      id: "r1",
      title: "CPE 492 | Section 001",
      building: "422 (30th Building)",
      ts: "Timestamp: 09:30-09:45 am",
    ),
    Room(
      id: "r2",
      title: "Drawing 100 | Section 06",
      building: "401-4 (4th Floor B.)",
      ts: "Timestamp: 13:00-13:15 am",
    ),
    Room(
      id: "r6",
      title: "Algo 361 | Section 008",
      building: "402 (30th Building)",
      ts: "Timestamp: 08:00-08:15 am",
    ),
    Room(
      id: "r4",
      title: "OS 305 | Section 009",
      building: "512 (30th Building)",
      ts: "Timestamp: 11:00-11:15 am",
    ),
    Room(
      id: "r5",
      title: "CPE 25 | Section 001",
      building: "Gear47",
      ts: "Timestamp: 09:30-09:45 am",
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
