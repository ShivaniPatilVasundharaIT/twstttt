import 'package:flutter/material.dart';

/// This Widget is the main application widget.
class card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Scaffold(

      appBar: AppBar(
      title: Text(
    ''
    ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: <Color>[Colors.lightBlue, Colors.indigo]),
        ),
      ),
        backgroundColor: Colors.transparent,
    ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
        scrollDirection : Axis.vertical,
    child: Center(
        child: Column(
          children: <Widget>[
     Container(
          width: 300,
          height: 200,
          padding: new EdgeInsets.all(10.0),

          child: Card(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white70,
            elevation: 10,
            child: Column(

              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album, size: 40),
                  title: Text(
                      'Sonu Nigam',
                      style: TextStyle(fontSize: 20.0)
                  ),
                  subtitle: Text(
                      'Best of Sonu Nigam Music.',
                      style: TextStyle(fontSize: 12.0)
                  ),
                ),
                ButtonBar(
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text('Play'),
                      onPressed: () {/* ... */},
                    ),
                    ElevatedButton(
                      child: const Text('Pause'),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),

        ),
            Container(
              width: 300,
              height: 200,
              padding: new EdgeInsets.all(10.0),

              child: Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white70,
                elevation: 10,
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 40),
                      title: Text(
                          'Sonu Nigam',
                          style: TextStyle(fontSize: 20.0)
                      ),
                      subtitle: Text(
                          'Best of Sonu Nigam Music.',
                          style: TextStyle(fontSize: 12.0)
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                          child: const Text('Play'),
                          onPressed: () {/* ... */},
                        ),
                        ElevatedButton(
                          child: const Text('Pause'),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ),
            Container(
              width: 300,
              height: 200,
              padding: new EdgeInsets.all(10.0),

              child: Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white70,
                elevation: 10,
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 40),
                      title: Text(
                          'Sonu Nigam',
                          style: TextStyle(fontSize: 20.0)
                      ),
                      subtitle: Text(
                          'Best of Sonu Nigam Music.',
                          style: TextStyle(fontSize: 12.0)
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                          child: const Text('Play'),
                          onPressed: () {/* ... */},
                        ),
                        ElevatedButton(
                          child: const Text('Pause'),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ),
            Container(
              width: 300,
              height: 200,
              padding: new EdgeInsets.all(10.0),

              child: Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white70,
                elevation: 10,
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 40),
                      title: Text(
                          'Sonu Nigam',
                          style: TextStyle(fontSize: 20.0)
                      ),
                      subtitle: Text(
                          'Best of Sonu Nigam Music.',
                          style: TextStyle(fontSize: 12.0)
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                          child: const Text('Play'),
                          onPressed: () {/* ... */},
                        ),
                        ElevatedButton(
                          child: const Text('Pause'),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ),
            Container(
              width: 300,
              height: 200,
              padding: new EdgeInsets.all(10.0),

              child: Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white70,
                elevation: 10,
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 40),
                      title: Text(
                          'Sonu Nigam',
                          style: TextStyle(fontSize: 20.0)
                      ),
                      subtitle: Text(
                          'Best of Sonu Nigam Music.',
                          style: TextStyle(fontSize: 12.0)
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                          child: const Text('Play'),
                          onPressed: () {/* ... */},
                        ),
                        ElevatedButton(
                          child: const Text('Pause'),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ),
            Container(
              width: 300,
              height: 200,
              padding: new EdgeInsets.all(10.0),

              child: Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white70,
                elevation: 10,
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 40),
                      title: Text(
                          'Sonu Nigam',
                          style: TextStyle(fontSize: 20.0)
                      ),
                      subtitle: Text(
                          'Best of Sonu Nigam Music.',
                          style: TextStyle(fontSize: 12.0)
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                          child: const Text('Play'),
                          onPressed: () {/* ... */},
                        ),
                        ElevatedButton(
                          child: const Text('Pause'),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ),
            Container(
              width: 300,
              height: 200,
              padding: new EdgeInsets.all(10.0),

              child: Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white70,
                elevation: 10,
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 40),
                      title: Text(
                          'Sonu Nigam',
                          style: TextStyle(fontSize: 20.0)
                      ),
                      subtitle: Text(
                          'Best of Sonu Nigam Music.',
                          style: TextStyle(fontSize: 12.0)
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                          child: const Text('Play'),
                          onPressed: () {/* ... */},
                        ),
                        ElevatedButton(
                          child: const Text('Pause'),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ), Container(
              width: 300,
              height: 200,
              padding: new EdgeInsets.all(10.0),

              child: Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white70,
                elevation: 10,
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album, size: 40),
                      title: Text(
                          'Sonu Nigam',
                          style: TextStyle(fontSize: 20.0)
                      ),
                      subtitle: Text(
                          'Best of Sonu Nigam Music.',
                          style: TextStyle(fontSize: 12.0)
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        ElevatedButton(
                          child: const Text('Play'),
                          onPressed: () {/* ... */},
                        ),
                        ElevatedButton(
                          child: const Text('Pause'),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ),

          ],
        ),
    ),
    );
  }

}