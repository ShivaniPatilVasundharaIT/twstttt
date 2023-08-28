import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Album {
  final int tiNo;
  final int custId;
  final String tiDate;
  final int recStatus;

  Album({
    required this.tiNo,
    required this.custId,
    required this.tiDate,
    required this.recStatus,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      tiNo: json['tiNo'],
      custId: json['custId'],
      tiDate: json['tiDate'],
      recStatus: json['recStatus'],
    );
  }
}



class MyApp1 extends StatelessWidget {
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
      final response = await http.post(Uri.parse('http://192.168.1.14:8080/mob_erp_marketing/getAllCustomerRenewal'));

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
        title: Text(
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

                      DataColumn(label: Text('Ti_no', style: TextStyle(fontSize: 8,fontWeight:FontWeight.bold))),
                      DataColumn(label: Text('Renewal_Date', style: TextStyle(fontSize: 8,fontWeight:FontWeight.bold))),
                      DataColumn(label: Text('cust_ID', style: TextStyle(fontSize: 8,fontWeight:FontWeight.bold))),
                      DataColumn(label: Text('Status', style: TextStyle(fontSize: 8,fontWeight:FontWeight.bold),)),
                    ],
                    rows: snapshot.data!.map((album) {
                      return DataRow(
                        cells: [
                          DataCell(Text(album.tiNo.toString(), style: TextStyle(fontSize: 10)),),
                          DataCell(Text(album.tiDate, style: TextStyle(fontSize: 10))),
                          DataCell(Text(album.custId.toString(), style: TextStyle(fontSize: 10))),
                          DataCell(Text(album.recStatus == 1 ? 'Completed' : 'Pending', style: TextStyle(fontSize: 8)),),

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
