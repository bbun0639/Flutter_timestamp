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
  String _time = "Not set";
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
                    obscureText: true,
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
                    obscureText: true,
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
                    obscureText: true,
                    onChanged: (val) {
                      setState(() => section = val);
                    }),
                SizedBox(height: 20.0),
                //<----------------------------------------------->
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.pink[400],
                  child: Text(
                    'Submit',
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
