import 'package:flutter/material.dart';
import 'package:flutter_appgit/widgets/app_drawer.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class UserReport extends StatefulWidget {
  @override
  _UserReport createState() => _UserReport();

  static const routeName = '/reported';
}

class _UserReport extends State<UserReport> {
  var dtr = DataTableReport();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Report',
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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: PaginatedDataTable(
              header: Text("CPE101 | Sec 001"),
              columns: [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Status')),
              ],
              source: dtr,
            ),
          ),
        ),
      ),
    );
  }
}

class DataTableReport extends DataTableSource {
  //final List<User> _reports = reports;

  //final User report = _reports[index];

  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text("cell$index")), //Column Name
      DataCell(Text("cell$index")), //Column Status
      // DataCell(Text(report.name)), 
      // DataCell(Text(report.status)),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 100; //จำนวน list ทั้งหมด // _dataFill.length;

  @override
  int get selectedRowCount => 0; //false
}
