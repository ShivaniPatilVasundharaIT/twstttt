import 'package:flutter/material.dart';
import 'package:twstttt/API/API2.dart';
import 'package:twstttt/API/API3.dart';
import 'package:twstttt/API/apiend.dart';
import 'package:twstttt/Widges/card.dart';
import 'package:twstttt/Widges/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: '',

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>(); // Add a GlobalKey for the form

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  key: _formKey, // Use the GlobalKey for the form
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // ... (your form fields and other widgets)
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter an email address';
                            } else if (!value.contains('@')) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email),
                            errorStyle: TextStyle(fontSize: 12.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9.0)),
                            ),
                          ),
                        ),
                      ),
                      // Example of TextFormField
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a Password';
                            } else if (!RegExp(r'(?=.*?[#!@$%^&*-])')
                                .hasMatch(value)) {
                              return 'Please enter a Strong Password';
                            }
                            return null;
                          },
                          obscureText: true, // Hide password
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                            errorStyle: TextStyle(fontSize: 12.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: ElevatedButton(
                            // Change from RaisedButton to ElevatedButton
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login1()));

                            },
                            style: ElevatedButton.styleFrom(
                              // Use style property to set button properties
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: Colors.blue,
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width,
                                  50), // Set button size
                            ),
                            // Change from RaisedButton to ElevatedButton
                            child: const Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: ElevatedButton(
                            // Change from RaisedButton to ElevatedButton
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyApp1()));

                            },
                            style: ElevatedButton.styleFrom(
                              // Use style property to set button properties
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              primary: Colors.deepPurple,
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width,
                                  50), // Set button size
                            ),
                            // Change from RaisedButton to ElevatedButton
                            child: const Text(
                              'API',
                              style:
                              TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: ElevatedButton(
                            // Change from RaisedButton to ElevatedButton
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  card()));

                            },
                            style: ElevatedButton.styleFrom(
                              // Use style property to set button properties
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              primary: Colors.deepOrange,
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width,
                                  30), // Set button size
                            ),
                            // Change from RaisedButton to ElevatedButton
                            child: const Text(
                              'card',
                              style:
                              TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: ElevatedButton(
                            // Change from RaisedButton to ElevatedButton
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  API_purpose()));

                            },
                            style: ElevatedButton.styleFrom(
                              // Use style property to set button properties
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              primary: Colors.deepOrange,
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width,
                                  30), // Set button size
                            ),
                            // Change from RaisedButton to ElevatedButton
                            child: const Text(
                              'pupose_API',
                              style:
                              TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: ElevatedButton(
                            // Change from RaisedButton to ElevatedButton
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  Follow_Up()));

                            },
                            style: ElevatedButton.styleFrom(
                              // Use style property to set button properties
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              primary: Colors.deepOrange,
                              minimumSize: Size(
                                  MediaQuery.of(context).size.width,
                                  30), // Set button size
                            ),
                            // Change from RaisedButton to ElevatedButton
                            child: const Text(
                              'Follow_up API',
                              style:
                              TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
