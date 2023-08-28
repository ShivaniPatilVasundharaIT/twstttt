import 'package:flutter/material.dart';
import 'package:twstttt/Widges/textbox.dart';

class image extends StatelessWidget{
  const image({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(
        ''
      ),
    ),
    body: Center(
      child: Column(
        children: <Widget>[
          // Image.asset('assets/Kstr-kochstrasse.gif',height: 200,scale: 1.5,opacity:
          // const AlwaysStoppedAnimation<double>(0.5)),

         Image.asset('assets/download.jpg',
           height: 200,
           width: 200,
         ),
          ElevatedButton(onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context) => textbox()));

          }, child: Text('go to textfilds screen'))
        ],
      ),
    ),
  );
  }

}