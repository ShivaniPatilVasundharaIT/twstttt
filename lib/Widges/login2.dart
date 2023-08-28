import 'package:flutter/material.dart';
import 'package:twstttt/Widges/image.dart';

import 'login.dart';

class Login2 extends StatelessWidget {
  const Login2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(    //if we want in center then we can right click on colunm then its show options
            crossAxisAlignment: CrossAxisAlignment.center, //this gets widget in center
            mainAxisAlignment: MainAxisAlignment.center, //this gets children in center
            children: [    //if we want to add more than 1widget(text) then use children
              Text(
                'patil',
                textAlign: TextAlign.center, //add textAlign
                style: TextStyle(           //text style
                  color: Colors.amber,      //text color
                  fontSize: 20,             //text fontsize
                ),
              ),
              Text(
                'patil2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => image()));
              } ,
                  style: ElevatedButton.styleFrom(
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),

                  ),
                      primary: Colors.blue,
                      minimumSize: Size(
                          MediaQuery.of(context).size.width,
                          50),
                  ),// Set button size
                        child:Text('data',style: TextStyle(color: Colors.deepPurple,fontSize: 30),)

              )
            ]),
      ),
    );
  }
}
