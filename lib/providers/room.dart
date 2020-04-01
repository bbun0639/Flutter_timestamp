import 'package:flutter/foundation.dart';

class Room with ChangeNotifier{
  final String id;
  final String title;
  // final String subject;
  // final String section;
  final String building;
  final String ts;


  //Constructor yo initialize a product
  Room({
    //use curly brances {} to add arguments as named arguments
    this.id,
    this.title,
    //this.subject,
    //this.section,
    this.building,
    this.ts,
    
  });
}
