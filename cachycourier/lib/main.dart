import 'package:flutter/material.dart';
import 'package:cachycourier/screens/authentication/signup.dart';
import 'package:cachycourier/screens/authentication/login.dart';
void main(){
  runApp(Cachycourier());
}
class Cachycourier extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // title: 'Cachycourier',
      // debugShowCheckedModeBanner: false,
      // theme:ThemeData(
      //   primarySwatch:Colors.pink
      // ),
      routes:<String,WidgetBuilder>{
        '/signuppage':(BuildContext context)=>Signup(),
        //'/loginpage':(BuildContext context)=>Login()
      },
      home:new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => new _HomePageState();

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    Navigator.of(context).pushReplacementNamed('/signuppage');
  }
}