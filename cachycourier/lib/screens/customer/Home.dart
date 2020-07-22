import 'package:flutter/material.dart';

import './addorder.dart';

void main() => runApp(new Homepagecustomer());
class Homepagecustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.card_travel, color: Colors.pink,size: 36.0,),
            title: new Text("Send a package"
              ,style: new TextStyle(fontWeight: FontWeight.w400),),
            subtitle: new Text("Deliver or recieve items such as gifts,documents,gifts etc"),
            onTap: (){
              Route route = MaterialPageRoute(builder: (context) => bookcourier());
              Navigator.push(context, route);
            },
          ),
          new Divider(color: Colors.pink,indent: 16.0,),
          new ListTile(
            leading: new Icon(Icons.person, color: Colors.pink, size: 36.0,),
            title: new Text("I am recipient"
              ,style: new TextStyle(fontWeight: FontWeight.w400),),
            subtitle: new Text("Track an incoming delivery in the app"),
            onTap: (){


            },
          ),

        ],
      ),
    );
    final sizedBox = new Container(
      margin: new EdgeInsets.only(left: 10.0, right: 10.0),
      child: new SizedBox(
        height: 180.0,
        child: card,
      ),
    );
    final center = new Center(
      child: sizedBox,
    );
    return Scaffold(
      body: center,
        );
  }
}