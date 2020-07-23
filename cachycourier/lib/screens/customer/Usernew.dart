
// import 'package:cachycourier/screens/customer/Home.dart';
// import 'package:flutter/material.dart';
// //import './home.dart';
// import './addorder.dart';
// import './settings.dart';
// //import './Notifications.dart';
// class Usernew extends StatefulWidget {
//   @override
//   // final String data;
//   // Usernew({
//   //   Key key,
//   //   @required this.data,
//   //   print(data)
//   // }) :super(key: key);

//   State<StatefulWidget> createState() {
    
    
//     return _UsernewState();
//   }
// }
// class _UsernewState extends State<Usernew> {
  

//   @override
//   Widget build(BuildContext context) {
    
//      final Map arguments = ModalRoute.of(context).settings.arguments as Map;
//       print('usernew');
      
//     if (arguments != null) print(arguments['id']);
//   int _selectedTab = 0;

//   final _pageOptions = [
//     Homepagecustomer(),
//     addOrderPage(arguments['id']),
//    // addOrderPage(),
//     StatsScreen(),
//   ];
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           primarySwatch: Colors.pink,
//           primaryTextTheme: TextTheme(
//             title: TextStyle(color: Colors.white),
//           )),
//       home: Scaffold(
//       appBar:AppBar(
//           title: Text('Cachycourier'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(
//                 Icons.alarm,
//                 color: Colors.white,
//               ),
//               onPressed: () {
//                 // do something
//                  Navigator.of(context).pushNamed('/notificationpage',arguments: {'id':arguments['id']});
//               },
//             )
//           ],
//         ),
//         body: _pageOptions[_selectedTab],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _selectedTab,
//           onTap: (int index) {
//             setState(() {
//               _selectedTab = index;
//             });
//           },
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: Text('Home'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.add_box),
//               title: Text('New Order'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.help),
//               title: Text('Profile'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
   
//   }









import 'package:cachycourier/screens/customer/Home.dart';
import 'package:flutter/material.dart';

import './addorder.dart';
import './settings.dart';

void main() => runApp(new Usernew());
class Usernew extends StatefulWidget {
  @override
// final Map arguments = ModalRoute.of(context).settings.arguments as Map;
//       print('usernew');
      
//     if (arguments != null) print(arguments['id']); 
  State<StatefulWidget> createState() {

    return MyAppState();
  }
}
class MyAppState extends State<Usernew> {
  
  int _selectedTab = 0;

  @override
  

  Widget build(BuildContext context) {
      final Map arguments = ModalRoute.of(context).settings.arguments as Map;
        final _pageOptions = [
    Homepagecustomer(),
    addOrderPage(arguments['id']),
    StatsScreen(),
  ];
//       print('usernew');
      
//     if (arguments != null) print(arguments['id']);
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
                 Navigator.of(context).pushNamed('/notificationpage',arguments: {'id':arguments['id']});
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
              icon: Icon(Icons.settings),
              title: Text('Setting'),
            ),
          ],
        ),
      ),
    );
  }}

