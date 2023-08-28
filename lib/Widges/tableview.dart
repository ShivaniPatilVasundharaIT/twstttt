import 'package:flutter/material.dart';

class table_view extends StatefulWidget {
  const table_view({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<table_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
            border: TableBorder(
              horizontalInside: const BorderSide(color: Colors.black, width: 0.7),
              verticalInside: const BorderSide(color: Colors.black, width: 0.7),
              borderRadius: BorderRadius.circular(10),
              bottom: const BorderSide(color: Colors.black, width: 0.7),
              top: const BorderSide(color: Colors.black, width: 0.7),
              left: const BorderSide(color: Colors.black, width: 0.7),
              right: const BorderSide(color: Colors.black, width: 0.7),
            ),
            // Datatable widget that have the property columns and rows.
            columns: const [
              // Set the name of the column
              DataColumn(
                label: Text('ID'),
              ),

              DataColumn(
                label: Text('Name'),
              ),

              DataColumn(
                label: Text('LastName'),
              ),
              DataColumn(
                label: Text('Age'),
              ),
              DataColumn(
                label: Text('marks'),
              ),
            ],
            rows: const [
              // Set the values to the columns
              DataRow(cells: [
                DataCell(Text("1")),
                DataCell(Text("Alex")),
                DataCell(Text("Anderson")),
                DataCell(Text("18")),
                DataCell(Text("18")),
              ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("John")),
                DataCell(Text("Anderson")),
                DataCell(Text("24")),
                DataCell(Text("24")),
              ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("John")),
                DataCell(Text("Anderson")),
                DataCell(Text("24")),
                DataCell(Text("24")),
              ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("John")),
                DataCell(Text("Anderson")),
                DataCell(Text("24")),
                DataCell(Text("24")),
              ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("John")),
                DataCell(Text("Anderson")),
                DataCell(Text("24")),
                DataCell(Text("24")),
              ]),
            ]),
      ),
    );
  }
}
