import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/services.dart';
class NotificationsPage extends StatefulWidget{
    @override
  State<StatefulWidget> createState() {
    return _NotificationPageState();
  }
}
class _NotificationPageState extends State<NotificationsPage>{

 
  @override
  Widget build(BuildContext context) {
    final Button = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.pink,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          _notifications();
        }
      )
        
    );
    
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Button,
                SizedBox(
                  height: 15.0,
                ),
              



              ],
            ),
          ),
        ),
      ),
    );
  }
void _notifications() async {
    print('notifications');
    Map<String, String> queryParameters={'email':'tunuguntlaooha1234@gmail.com'};
    print('helloo');
    try{
       print(DotEnv().env['ipadress']);
       print('hiiiii');
      var url=DotEnv().env['ipadress']+":"+DotEnv().env['port'];
         print(url);
     
       var uri =Uri.http(url,'notifications', queryParameters);
        var resp = await http.get(uri);
     
   // http.Response resp = await http.get(url,queryParameters);  // 10.0.2.2 for emulator
    if (resp.statusCode == 200) {
      print("success");
      var jsonResponse = convert.jsonDecode(resp.body);
      print('notifications of user');
     print('$jsonResponse');
     print(jsonResponse['notification'][0]['notificationtext']);
     // Navigator.of(context).pushNamed('/userpage');
    }
    else{
      print(resp.statusCode);
      print("fail");
     // Navigator.of(context).pushNamed('/loginpage');
    }
      } catch (error) {
        print('error: $error');
        _showAlertDialog('Error', error.toString());
        
      }
    
  }


  void _showAlertDialog(String title, String message) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(
        context: context,
        builder: (_) {
          return alertDialog;
        });
  }
}