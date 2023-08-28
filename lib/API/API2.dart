import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
//    "cust_id": "1027",
//         "unit_rate": "9000.00",
//         "ti_date": "20-01-2023",
//         "unit_qty": null,
//         "item_name": "Vehicle Tracking System (With SIM)",
//         "item_id": "4",
//         "ti_no": "431",
//         "ti_id": null,
//         "cust_name": null,
//         "item_qty": "7"
// _____________________
//    @SerializedName("ti_id")
//     var ti_id: Int,
//     @SerializedName("item_id")
//     var item_id: Int,
//     @SerializedName("item_name")
//     //@SerializedName("itemCode")
//     var item_code: String,
//     @SerializedName("unit_qty")
//     var item_qnt: Int,
//     @SerializedName("unit_rate")
//     var item_rate: Int,
//     @SerializedName("ti_no")
//     var invoice_no: Int,
//     @SerializedName("ti_date")
//     var date: String,
//     @SerializedName("cust_id")
//     var cust_id: Int,
//
//     @SerializedName("item_qty")
//     var item_qty: String
class Album {
  final int item_id;
  final double unit_rate; // Change the type to double
  final String ti_date;
  final String item_name;

  Album({
    required this.item_id,
    required this.unit_rate,
    required this.ti_date,
    required this.item_name,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(

      item_id: int.parse(json['item_id']),
      unit_rate: double.parse(json['unit_rate']),
      ti_date: json['ti_date'],
      item_name: json['item_name'],
    );
  }

}



class API_purpose extends StatelessWidget {
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
      final response = await http.get(Uri.parse('http://192.168.1.14:8080/mob_erp_marketing/getCustomerPurchesDetailserp'));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        final List<Album> albums = jsonData.map((json) => Album.fromJson(json)).toList();
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
        title: const Text(
            ''
        ),
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

                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DataTable(
              columnSpacing: 12,
                    dataRowHeight: 35,
                    border: TableBorder(
                      horizontalInside: BorderSide(color: Colors.black, width: 0.5),
                      verticalInside: BorderSide(color: Colors.black, width: 0.7),
                      borderRadius: BorderRadius.circular(0),
                      bottom: BorderSide(color: Colors.black, width: 0.5),
                      top: BorderSide(color: Colors.black, width: 0.5),
                      left: BorderSide(color: Colors.black, width: 0.5),
                      right: BorderSide(color: Colors.black, width: 0.5),
                    ),

                    columns: const [

                      DataColumn(label: Text('Item_Id', style: TextStyle(fontSize: 8,fontWeight:FontWeight.bold))),
                      DataColumn(label: Text('Ti_date', style: TextStyle(fontSize: 8,fontWeight:FontWeight.bold))),
                      DataColumn(label: Text('item_name', style: TextStyle(fontSize: 8,fontWeight:FontWeight.bold))),
                      DataColumn(label: Text('Unit_rate', style: TextStyle(fontSize: 8,fontWeight:FontWeight.bold))),
                    ],
                    rows: snapshot.data!.map((album) {
                      return DataRow(
                        cells: [
                          DataCell(Text(album.item_id.toString(), style: TextStyle(fontSize: 10)),),
                          DataCell(Text(album.ti_date, style: TextStyle(fontSize: 10))),
                          DataCell(Text(album.item_name,style: TextStyle(fontSize: 8)),),
                          DataCell(Text(album.unit_rate.toString(), style: TextStyle(fontSize: 10))),


                        ],
                      );
                    }).toList(),
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
