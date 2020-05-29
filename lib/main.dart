import 'package:afr/dev_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:afr/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'AFR',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[900],
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 10.0),
                CircleAvatar(
                  radius: 55.0,
                  backgroundColor: Colors.purple[50],
                  child: CircleAvatar(
                    radius: 54.0,
                    backgroundImage: AssetImage('images/rev1.png'),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Welcome to the AFR',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[50],
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.purple[50],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'The Autonomous Fetching Robot, made for Assisted Living.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.purple[50],
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 50.0),
                    child: SizedBox(
                      height: 50.0,
                      width: 100.0,
                      child: RaisedButton(
                        color: Colors.purple[50],
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: Colors.purple[900],
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                    ),
                  ),
                ), // Button
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: RaisedButton(
                      child: Icon(
                        Icons.info_outline,
                        color: Colors.purple[900],
                      ),
                      shape: CircleBorder(),
                      color: Colors.purple[50],
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => DevInfo()));
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
