import 'package:flutter/material.dart';
import 'package:twstttt/API/apiend.dart';
import 'package:twstttt/Widges/ragister.dart';
import 'package:twstttt/Widges/tableview.dart';

class textbox extends StatelessWidget{
  const textbox({super.key});

  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    appBar: AppBar(
      title: const Text(''),
    ),
    body:   Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          Text('LOGIN',style: TextStyle(fontFamily: AutofillHints.birthdayYear,fontSize: 25,color: Colors.lightBlueAccent,),),
      Padding(padding: EdgeInsets.all(15),
          child: TextField(

            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'UserId',
              hintText: 'Enter UserId'
            ),
          ),
  ),
          Padding(padding: EdgeInsets.all(15),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Enter Password'
            ),
          ),


    ),
          ElevatedButton(
              onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)
            => table_view()));

          }, child: Text('submit'))
        ],

    ),
    ),
  );
  }

}