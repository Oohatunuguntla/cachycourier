import 'package:flutter/material.dart';
import 'package:cachycourier/screens/authentication/signup.dart';
import 'package:cachycourier/screens/authentication/login.dart';
import 'package:cachycourier/screens/authentication/reset.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main(){
  runApp(Cachycourier());
}
class Cachycourier extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    DotEnv().load('.env');
    return MaterialApp(
      // title: 'Cachycourier',
      // debugShowCheckedModeBanner: false,
      // theme:ThemeData(
      //   primarySwatch:Colors.pink
      // ),
      routes:<String,WidgetBuilder>{
        '/signuppage':(BuildContext context)=>Signup(),
        '/loginpage':(BuildContext context)=>Login(),
        '/resetpage':(BuildContext context)=>ResetPassword()
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Login();
  }
}