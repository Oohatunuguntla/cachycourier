import 'package:cachycourier/main.dart';
import 'package:cachycourier/screens/customer/Home.dart';
import 'package:flutter/material.dart';
//import './home.dart';
import './addorder.dart';
import './settings.dart';
//import './Notifications.dart';
class Usernew extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UsernewState();
  }
}
class _UsernewState extends State<Usernew> {
  int _selectedTab = 0;
  final _pageOptions = [
    Homepagecustomer(),
    addOrderPage(),
    SettingsOnePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(
      appBar:AppBar(
          title: Text('Cachycourier'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.alarm,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
                 Navigator.of(context).pushNamed('/notificationpage');
              },
            )
          ],
        ),
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              title: Text('New Order'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help),
              title: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
   
  }