import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/*@SerializedName("item_name")
val item_name: String,

@SerializedName("unit_rate")
val unit_rate: String,

@SerializedName("qt_date")
val qt_date: String,

@SerializedName("item_qty")
val item_qty: String,
@SerializedName("cust_id")
var cust_id: Int,*/

/*//
"item_name": "Roller SCADA (With HMI )",
"unit_rate": "65000.00",
"qt_date": "27-08-2021",
"item_qty": "1"*/
class Album {
  final int item_qty;
  final double unit_rate; // Change the type to double
  final String qt_date;
  final String item_name;

  Album({
    required this.item_qty,
    required this.unit_rate,
    required this.qt_date,
    required this.item_name,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      item_qty: int.parse(json['item_qty']),
      unit_rate: double.parse(json['unit_rate']),
      qt_date: json['qt_date'],
      item_name: json['item_name'],
    );
  }
}

class Follow_Up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );

  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<Album>> futureAlbums;

  @override
  void initState() {
    super.initState();
    futureAlbums = fetchAlbums();
  }

  Future<List<Album>> fetchAlbums() async {
    try {
      final response = await http.get(Uri.parse(
          'http://192.168.1.14:8080/mob_erp_marketing/get_customerpurcheshistory'));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        final List<Album> albums =
            jsonData.map((json) => Album.fromJson(json)).toList();
        return albums;
      } else {
        throw Exception('Failed to load albums: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching albums: $e');
      throw Exception('Failed to load albums: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: <Color>[Colors.blueAccent, Colors.indigo]),
          ),
        ),
      ),

      body: Center(
        child: FutureBuilder<List<Album>>(
          future: futureAlbums,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // Loading state
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
              // Error state
            } else if (snapshot.hasData) {
              if (snapshot.data!.isEmpty) {
                return Text('No data available.'); // Data is empty
              } else {
                return Padding(
                  padding: EdgeInsets.zero,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                      dataRowHeight: 35,
                      columnSpacing: 12,
                      border: TableBorder(
                        horizontalInside:
                            BorderSide(color: Colors.black, width: 0.7),
                        verticalInside:
                            BorderSide(color: Colors.black, width: 0.7),
                        borderRadius: BorderRadius.circular(0),
                        bottom: const BorderSide(color: Colors.black, width: 0.5),
                        top: BorderSide(color: Colors.black, width: 0.5),
                        left: BorderSide(color: Colors.black, width: 0.5),
                        right: BorderSide(color: Colors.black, width: 0.5),
                      ),
                      columns: const [
                        DataColumn(
                            label: Text('Item_Id',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  height: 0,
                                ))),
                        DataColumn(
                            label: Text('Ti_date',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  height: 0,
                                ))),
                        DataColumn(
                            label: Text('item_name',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  height: 0,
                                ))),
                        DataColumn(
                            label: Text('Unit_rate',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  height: 0,
                                ))),
                      ],
                      rows: snapshot.data!.map((album) {
                        return DataRow(
                          cells: [
                            DataCell(
                              Container(
                                padding: EdgeInsets.zero,
                                child: Text(album.item_qty.toString(),
                                    style: TextStyle(fontSize: 8)),
                              ),
                            ),
                            DataCell(
                              Container(
                                  padding: EdgeInsets.zero,
                                  child: Text(album.qt_date,
                                      style: TextStyle(fontSize: 8))),
                            ),
                            DataCell(
                              Container(
                                padding: EdgeInsets.zero,
                                child: Text(album.item_name,
                                    style: TextStyle(fontSize: 8)),
                              ),
                            ),
                            DataCell(
                              Container(
                                  padding: EdgeInsets.zero,
                                  child: Text(album.unit_rate.toString(),
                                      style: TextStyle(fontSize: 8))),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                );
              }
            } else {
              return Text('Unknown state.'); // Unknown state
            }
          },
        ),
      ),
    );
  }
}
