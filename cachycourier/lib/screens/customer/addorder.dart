import 'package:flutter/material.dart';
import './home.dart';
import './timer.dart';
import './progressBar.dart';
import './avatarAndText.dart';
import './util.dart';

class addOrderPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Forms',
      theme: ThemeData(
        primarySwatch: Colors.pink,

      ),
      home: MyHomePage(title: 'Flutter Forms'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final Button = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.pink,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => bookcourier());
          Navigator.push(context, route);
        },
        child: Text("Book a Courier",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final Button1 = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.pink,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => bookcourier1());
          Navigator.push(context, route);
        },
        child: Text("Hyperlocal",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
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
                Button1,
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
}
class bookcourier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:
      MyCustomForm(),
    );
  }
}
class bookcourier1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      MyCustomForm(),
    );
  }
}


class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  String radioItem = '';
  bool _value1 = false;
  bool _value2 = false;

  void _onChanged1(bool value) => setState(() => _value1 = value);

  void _onChanged2(bool value) => setState(() => _value2 = value);

  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return ListView(
      key: _formKey,

      children: <Widget>[
        TextFormField(
          decoration: const InputDecoration(
            icon: const Icon(Icons.person),
            hintText: 'Enter your full name',
            labelText: 'Name',
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: const Icon(Icons.home),
            hintText: 'Enter the Address',
            labelText: 'Address',
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter valid phone number';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: const Icon(Icons.phone),
            hintText: 'Enter phone number',
            labelText: 'Phone number',
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter valid date';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: const Icon(Icons.timer),
            hintText: 'Time to pickup',
            labelText: 'Time to pickup',
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter valid date';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: const Icon(Icons.question_answer),
            hintText: 'What are you sending?',
            labelText: 'What are you sending?',
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter valid date';
            }
            return null;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: const Icon(Icons.attach_money),
            hintText: 'Value of package?',
            labelText: 'Value',
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter valid date';
            }
            return null;
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('Upto 5 kg'),
          value: 'Upto 5kg',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('Upto 10kg'),
          value: 'Upto 10kg',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('Upto 15kg'),
          value: 'Upto 15kg',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('Upto 20kg'),
          value: 'Upto 20kg',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),

        Text('Selected:  $radioItem', style: TextStyle(fontSize: 23),),


        TextFormField(
          decoration: const InputDecoration(
            icon: const Icon(Icons.attach_money),
            hintText: 'Promocode?',
            labelText: 'Promocode',
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter valid code';
            }
            return null;
          },
        ),


        new SwitchListTile(
          value: _value2,
          onChanged: _onChanged2,
          title: new Text('Notify me by SMS', style: new TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink)),
        ),
        new SwitchListTile(
          value: _value2,
          onChanged: _onChanged2,
          title: new Text('Notify recipients by SMS', style: new TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink)),
        ),


        new Container(
            width: double.infinity,
            height: 50.0,
            child: new RaisedButton(

              textColor: Colors.white,
              color: Colors.pink,

              child: const Text('Create Order'),

              onPressed: () {
                // It returns true if the form is valid, otherwise returns false
                Route route = MaterialPageRoute(builder: (context) => ConfirmOrderPage());
                Navigator.push(context, route);
              },
            )),

      ],

    );
  }
}

class ConfirmOrderPage extends StatelessWidget{
  static final String path = "lib/src/pages/ecommerce/confirm_order1.dart";
  final String address = "Chabahil, Kathmandu";
  final String phone="9818522122";
  final double total = 500;
  final double delivery = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Subtotal"),
              Text("Rs. $total"),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Delivery fee"),
              Text("Rs. $delivery"),
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Total", style: Theme.of(context).textTheme.title,),
              Text("Rs. ${total+delivery}", style: Theme.of(context).textTheme.title),
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Text("Delivery Address".toUpperCase())
          ),
          Column(
            children: <Widget>[
              RadioListTile(
                selected: true,
                value: address,
                groupValue: address,
                title: Text(address),
                onChanged: (value){},
              ),
              RadioListTile(
                selected: false,
                value: "New Address",
                groupValue: address,
                title: Text("Choose new delivery address"),
                onChanged: (value){},
              ),
              Container(
                  color: Colors.grey.shade200,
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Text("Contact Number".toUpperCase())
              ),
              RadioListTile(
                selected: true,
                value: phone,
                groupValue: phone,
                title: Text(phone),
                onChanged: (value){},
              ),
              RadioListTile(
                selected: false,
                value: "New Phone",
                groupValue: phone,
                title: Text("Choose new contact number"),
                onChanged: (value){},
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Text("Payment Option".toUpperCase())
          ),
          RadioListTile(
            groupValue: true,
            value: true,
            title: Text("Cash on Delivery"),
            onChanged: (value){},
          ),
          RadioListTile(
            groupValue: true,
            value: false,
            title: Text("PayPal"),
            onChanged: (value){},
          ),
          RadioListTile(
            groupValue: true,
            value: false,
            title: Text("Paytm"),
            onChanged: (value){},
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Order()),
                );
              },
              child: Text("Confirm Order", style: TextStyle(
                  color: Colors.white
              ),),
            ),
          )
        ],
      ),
    );
  }



}

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> with TickerProviderStateMixin {
  // final timerDuration = Duration(milliseconds: 2500);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 40,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                'CANCEL',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                'Order#568',
                style:
                TextStyle(color: Color.fromRGBO(0, 0, 0, 0.2), fontSize: 12),
              ),
            ),
            Timer(),
            ProgressBar(),
            SizedBox(height: 50),
            AvatarAndText(),
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: OutlineButton(
                borderSide: BorderSide(width: 1.0, color: FoodColors.Blue),
                color: FoodColors.Blue,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 50),
                      Text(
                        'Go to Homepage',
                        style: TextStyle(fontSize: 15, color: FoodColors.Blue),
                      ),
                      SizedBox(width: 50),
                      Image.asset(
                        'assets/images/icon_direction.png',
                        scale: 2,
                      )
                    ],
                  ),
                ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
