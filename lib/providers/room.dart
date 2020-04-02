import 'package:flutter/foundation.dart';

class Room with ChangeNotifier {
  final String id;
  final String subject;
  final String section;
  final String roomNum;
  final String building;
  final String ts;

  //Constructor yo initialize a product
  Room({
    //use curly brances {} to add arguments as named arguments
    this.id,
    this.subject,
    this.section,
    this.roomNum,
    this.building,
    this.ts,
  });
}
