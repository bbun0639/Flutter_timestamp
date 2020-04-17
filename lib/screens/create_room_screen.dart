import 'package:flutter/material.dart';
import 'package:flutter_appgit/widgets/app_drawer.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class CreateRoom extends StatefulWidget {
  @override
  _CrateRoom createState() => _CrateRoom();

  static const routeName = '/create-room';
}

class _CrateRoom extends State<CreateRoom> {
  //final AuthService  _auth = AuthService();
  String subject = '';
  String section = '';
  String roomNum = '';
  String building = '';
  String startTime = '';
  String endTime = '';
  String _date = "Not set";
  String _start_time = "Not set";
  String _end_time = "Not set";
  String error = '';

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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
                child: Column(
              children: <Widget>[
                SizedBox(height: 10.0),
                Text(
                  'Create New Room',
                  style: new TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: <Widget>[],
                ),
                SizedBox(height: 30.0),
                TextFormField(
                    //decoration: textTnputDecoration.copyWith(hintText: 'Email'),
                    decoration: new InputDecoration(
                      hintText: 'Subject',
                      icon: new Icon(
                        Icons.book,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (val) => val.isEmpty ? 'Enter subject' : null,
                    onChanged: (val) {
                      setState(() => subject = val);
                    }),
                SizedBox(height: 20.0),
                TextFormField(
                    //decoration: textTnputDecoration.copyWith(hintText: 'Password'),
                    decoration: new InputDecoration(
                      hintText: 'Section',
                      icon: new Icon(
                        Icons.format_list_numbered,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (val) => val.isEmpty ? 'Enter a section' : null,
                    //obscureText: true,
                    onChanged: (val) {
                      setState(() => section = val);
                    }),
                SizedBox(height: 20.0),
                TextFormField(
                    //decoration: textTnputDecoration.copyWith(hintText: 'Password'),
                    decoration: new InputDecoration(
                      hintText: 'Room number',
                      icon: new Icon(
                        Icons.drafts,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (val) =>
                        val.isEmpty ? 'Enter Room number' : null,
                    //obscureText: true,
                    onChanged: (val) {
                      setState(() => section = val);
                    }),
                SizedBox(height: 20.0),
                TextFormField(
                    //decoration: textTnputDecoration.copyWith(hintText: 'Password'),
                    decoration: new InputDecoration(
                      hintText: 'Building',
                      icon: new Icon(
                        Icons.location_city,
                        color: Colors.grey,
                      ),
                    ),
                    validator: (val) => val.isEmpty ? 'Enter Building' : null,
                    //obscureText: true,
                    onChanged: (val) {
                      setState(() => section = val);
                    }),
                SizedBox(height: 20.0),
                //<------------------------------------------------------------------------------>

                Padding(
                  padding: const EdgeInsets.only(bottom:30),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          elevation: 4.0,
                          onPressed: () {
                            DatePicker.showDatePicker(context,
                                theme: DatePickerTheme(
                                  containerHeight: 210.0,
                                ),
                                showTitleActions: true,
                                minTime: DateTime(2000, 1, 1),
                                maxTime: DateTime(2022, 12, 31),
                                onConfirm: (date) {
                              print('confirm $date');
                              _date =
                                  '${date.year} - ${date.month} - ${date.day}';
                              setState(() {});
                            },
                                currentTime: DateTime.now(),
                                locale: LocaleType.en);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.date_range,
                                            size: 20.0,
                                            color: Colors.indigo,
                                          ),
                                          Text(
                                            "   $_date",
                                            style: TextStyle(
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "Date",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                          color: Colors.white,
                        ),
                        SizedBox(height: 20.0),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          elevation: 4.0,
                          onPressed: () {
                            DatePicker.showTimePicker(context,
                                theme: DatePickerTheme(
                                  containerHeight: 210.0,
                                ),
                                showTitleActions: true, onConfirm: (time) {
                              print('confirm $time');
                              _start_time =
                                  '${time.hour} : ${time.minute} : ${time.second}';
                              setState(() {});
                            },
                                currentTime: DateTime.now(),
                                locale: LocaleType.en);
                            setState(() {});
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.access_time,
                                            size: 20.0,
                                            color: Colors.indigo,
                                          ),
                                          Text(
                                            "  $_start_time",
                                            style: TextStyle(
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "Start time",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                          color: Colors.white,
                        ),
                        SizedBox(height: 20.0),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          elevation: 4.0,
                          onPressed: () {
                            DatePicker.showTimePicker(context,
                                theme: DatePickerTheme(
                                  containerHeight: 210.0,
                                ),
                                showTitleActions: true, onConfirm: (time) {
                              print('confirm $time');
                              _end_time =
                                  '${time.hour} : ${time.minute} : ${time.second}';
                              setState(() {});
                            },
                                currentTime: DateTime.now(),
                                locale: LocaleType.en);
                            setState(() {});
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.access_time,
                                            size: 20.0,
                                            color: Colors.indigo,
                                          ),
                                          Text(
                                            "   $_end_time",
                                            style: TextStyle(
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "End time",
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                //<------------------------------------------------------------------------------>
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.pink[400],
                  child: Text(
                    '          Submit        ',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () async {},
                ),
                SizedBox(height: 12.0),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
