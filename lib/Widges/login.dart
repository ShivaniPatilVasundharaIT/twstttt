
import 'package:flutter/material.dart';

import 'login2.dart';

class Login1 extends StatelessWidget { //right click on Login1 then add Widget and superkey
  const Login1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(    //we can simply return scaffold here
      appBar: AppBar(    //added appbar
        title: const Text(
          'title'        //we can add title of app here
         ),
      ),
      body: Align(      //Align center for display the text in center
        alignment: Alignment.center,
          child: TextButton(onPressed: (){ //onpressed on textButton its display like text and go to next screen
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Login2()));

            print("123");  // we can print in logcat
          },
              child: Text("CHu"))
      ),
    );


  }
}
