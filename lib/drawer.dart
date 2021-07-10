import 'package:covid/bottombar.dart';
import 'package:covid/prevention.dart';
import 'package:covid/telegram.dart';
import 'package:covid/vaccination.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      Container(
        height: 210.0,
        child: DrawerHeader(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Colors.blue[200],
            Colors.blue, // shadowColor: Color(0xff225643),
            Colors.blue[900],
          ])),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(right: 100, left: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          'https://image.freepik.com/free-vector/cartoon-doctor-spraying-alcohol-kill-corona-virus-concept-disease-prevention_68708-824.jpg',
                        )),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 4, left: 8),
                    child: Text(
                      'Covid Helper',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                    ),
                    child: Text(
                      'Fighting against Covid-19',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          decoration: TextDecoration.underline),
                    )),
              ],
            ),
          ),
        ),
      ),
      ListTile(
        leading: IconButton(
          icon: Icon(Icons.home),
          iconSize: 24,
          onPressed: () {},
        ),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AnimatedBottomBar()),
          );
        },
      ),
      ListTile(
        leading: IconButton(
          icon: Icon(Icons.local_hospital),
          iconSize: 24,
          onPressed: () {},
        ),
        title: Text('My Vaccination'),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WebViewContainerr()),
          );
        },
      ),
      ListTile(
        leading: IconButton(
          icon: Icon(Icons.sanitizer),
          iconSize: 24,
          onPressed: () {},
        ),
        title: Text('Covid Prevention'),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Prevention()),
          );
        },
      ),
      ListTile(
        leading: IconButton(
          icon: Icon(Icons.biotech),
          iconSize: 24,
          onPressed: () {},
        ),
        title: Text('Telegram Bot'),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelegramWebview()),
          );
        },
      ),
      Divider(height: 1, thickness: 0.5, color: Colors.blueGrey),
      ListTile(
        leading: IconButton(
          icon: Icon(Icons.contacts),
          iconSize: 24,
          onPressed: () {},
        ),
        title: Text('Contact Us'),
        onTap: () {
          // Navigator.pop(context);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => ContactUs()),
          // );
        },
      ),
      Divider(height: 1, thickness: 0.5, color: Colors.blueGrey),
      SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Padding(
          //   padding: EdgeInsets.only(left: 0),
          // ),
          IconButton(
              color: Colors.blue,
              icon: Icon(FontAwesomeIcons.facebook),
              iconSize: 35,
              onPressed: () //async
                  {}),
          IconButton(
            color: Colors.redAccent,
            icon: Icon(FontAwesomeIcons.instagram),
            iconSize: 35,
            onPressed: () async {
              // var url = 'https://www.instagram.com/shreyastalwekar/';

              // if (await canLaunch(url)) {
              //   launch(url);
              // } else {
              //   throw 'Could not launch $url';
              // }
            },
          ),
          IconButton(
              color: Colors.blue,
              icon: Icon(FontAwesomeIcons.twitter),
              iconSize: 35,
              onPressed: () //async
                  {})
        ],
      ),
      SizedBox(
        height: 15,
      )
    ]));
  }
}
