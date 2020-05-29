import 'package:flutter/material.dart';
import 'package:afr/main.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String display = 'Home Page';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple[900],
          title: Text(
            display,
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => MyApp()),
                    (Route<dynamic> route) => false);
              },
            ),
          ],
        ),
        drawer: SafeArea(
          child: Container(
            width: 190.0,
            child: Drawer(
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[900],
                      image: DecorationImage(
                        image: AssetImage('images/AFR.png'),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Device Status'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      //Navigator.pop(context);
                    },
                  ),
                  spacer(),
                  ListTile(
                    title: Text('Device Location'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  spacer(),
                  ListTile(
                    title: Text('Manual Control'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  spacer(),
                  ListTile(
                    title: Text('Voice Commands'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  spacer(),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.purple[50],
        //body: defaultActivity(),
      ),
    );
  }

  Widget spacer() {
    return SizedBox(
      height: 20.0,
      width: 200.0,
      child: Divider(
        color: Colors.deepPurple[900],
      ),
    );
  }
}
