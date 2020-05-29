import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DevInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[900],
        appBar: AppBar(
          centerTitle: true,
          leading: Container(
            color: Colors.purple[900],
            margin: EdgeInsets.all(6.0),
            child: IconButton(
              icon: Icon(Icons.keyboard_backspace),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: Colors.purple[50],
          title: Text(
            'Developer Info',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.purple[900],
            ),
          ),
        ),
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
                    backgroundImage: AssetImage('images/hdctr.jpg'),
                  ),
                ),
                SizedBox(height: 5.0),
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
                  height: 10.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.purple[50],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.0),
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
                Flexible(
                  child: CustomScrollView(
                    shrinkWrap: true,
                    primary: false,
                    cacheExtent: 20.0,
                    slivers: <Widget>[
                      SliverPadding(
                        padding: EdgeInsets.all(20),
                        sliver: SliverGrid.count(
                          crossAxisSpacing: 25,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          children: <Widget>[
                            Container(
                              //margin: EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.person_pin,
                                    color: Colors.purple[50],
                                    size: 22.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RaisedButton(
                                    color: Colors.purple[50],
                                    onPressed: _launchLink,
                                    child: Text(
                                      'LinkedIn',
                                      style: TextStyle(
                                        color: Colors.purple[900],
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ), // Dev info LinkedIn
                            Container(
                              //margin: EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.insert_link,
                                    color: Colors.purple[50],
                                    size: 22.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RaisedButton(
                                    color: Colors.purple[50],
                                    onPressed: _launchGit,
                                    child: Text(
                                      'Github',
                                      style: TextStyle(
                                        color: Colors.purple[900],
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ), // Dev info Github
                            Container(
                              //margin: EdgeInsets.only(left: 10.0, right: 100.0),
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
                                  RaisedButton(
                                    color: Colors.purple[50],
                                    onPressed: _launchGmail,
                                    child: Text(
                                      'E-mail',
                                      style: TextStyle(
                                        color: Colors.purple[900],
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ), // Devi info gmail
                            Container(
                              // margin: EdgeInsets.only(
                              //   left: 10.0, right: 100.0, bottom: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.phone,
                                    color: Colors.purple[50],
                                    size: 20.0,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RaisedButton(
                                    color: Colors.purple[50],
                                    onPressed: _launchSMS,
                                    child: Text(
                                      'Phone',
                                      style: TextStyle(
                                        color: Colors.purple[900],
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ), // Devi info phone
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _launchLink() async {
    const _url = 'https://www.linkedin.com/in/jonathanlicari/';
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Sorry, could not launch $_url';
    }
  }

  void _launchGit() async {
    const _url = 'https://github.com/jonLicari';
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Sorry, could not launch $_url';
    }
  }

  void _launchSMS() async {
    const String _mobile = '6478232848';
    const _url = 'tel:$_mobile';
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Sorry, could not launch $_url';
    }
  }

  void _launchGmail() async {
    const _url = 'mailto:<jlicari@ryerson.ca>?subject=AFR&body=Hello';
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Sorry, could not launch $_url';
    }
  }
}
