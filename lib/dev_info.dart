import 'package:flutter/material.dart';

class DevInfo extends StatelessWidget {
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
                    backgroundImage: AssetImage('images/hdctr.png'),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Jonathan Licari',
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
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    'B. Eng, Electrical Engineering',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.purple[50],
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* Container(
margin: EdgeInsets.only(left: 5.0),
child: Row(
children: <Widget>[
Icon(
Icons.person_pin,
color: Colors.purple[50],
size: 20.0,
),
SizedBox(
width: 10.0,
),
Text(
'linkedin.com/in/jonathanlicari/',
style: TextStyle(
color: Colors.purple[50],
fontSize: 10.0,
),
),
],
),
), // Dev info LinkedIn
Container(
margin: EdgeInsets.only(left: 5.0),
child: Row(
children: <Widget>[
Icon(
Icons.insert_link,
color: Colors.purple[50],
size: 20.0,
),
SizedBox(
width: 10.0,
),
Text(
'github.com/jonLicari/AFR',
style: TextStyle(
color: Colors.purple[50],
fontSize: 10.0,
),
),
],
),
), // Dev info Github
Container(
margin: EdgeInsets.only(left: 5.0),
child: Row(
children: <Widget>[
Icon(
Icons.mail_outline,
color: Colors.purple[50],
size: 20.0,
),
SizedBox(
width: 10.0,
),
Text(
'jlicari@ryerson.ca',
style: TextStyle(
color: Colors.purple[50],
fontSize: 10.0,
),
),
],
),
), // Devi info gmail

 */