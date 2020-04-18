import 'package:flutter/material.dart';
import 'package:flutter_appgit/widgets/app_drawer.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class UserReport extends StatefulWidget {
  @override
  _UserReport createState() => _UserReport();

  static const routeName = '/reported';
}

class _UserReport extends State<UserReport> {
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
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Reported',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900]),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
            child: Card(
              elevation: 6,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Status')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Pitakarn')),
                    DataCell(Text("Yes")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Pathomphob')),
                    DataCell(Text("Yes")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fluke kung')),
                    DataCell(Text("No")),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
