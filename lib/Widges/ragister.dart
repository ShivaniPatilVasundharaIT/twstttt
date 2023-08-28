import 'package:flutter/material.dart';

class registerinfo extends StatelessWidget {
  const registerinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: const Center(
        child: Column(
          children: <Widget>[
            Text(
              'REGISTER ',
              style: TextStyle(
                fontFamily: AutofillHints.countryName,
                fontSize: 30,
                color: Colors.blue,
                backgroundColor: Colors.white70,
                letterSpacing: CircularProgressIndicator.strokeAlignInside,
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
            child: TextField(

              decoration: InputDecoration( filled: true,fillColor: Colors.limeAccent),
              textAlign: TextAlign.center,
            ),),
          ],
        ),
      ),
    );
  }
}
