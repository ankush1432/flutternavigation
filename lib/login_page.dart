import 'package:flutter/material.dart';
import 'package:picks/forgot_page.dart';
import 'package:picks/home_page.dart';
import 'package:picks/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  AnimationController _iconAnimController;
  Animation<double>_iconAnim;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _iconAnimController=new AnimationController(
vsync: this,
duration: new Duration(milliseconds: 500)
    );
    _iconAnim=new CurvedAnimation(
parent: _iconAnimController,
curve: Curves.bounceOut
    );
    _iconAnim.addListener(()=>this.setState((){}));
    _iconAnimController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
      ),
      backgroundColor: Colors.grey,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
        
    new Image(
      image: AssetImage("assets/splash.jpeg"),
      fit: BoxFit.cover,
      color: Colors.green,
      colorBlendMode: BlendMode.darken,
    ),
    new Column(

      mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
  new Image(image: AssetImage("assets/ic_launcher.png"),),
  new Form(
    child: Theme(
      data: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.teal,
        inputDecorationTheme: new InputDecorationTheme(
          labelStyle: new TextStyle(
            color: Colors.teal,
            fontSize: 20.0
          )
        )
      ),
          child: Container(
            padding: const EdgeInsets.all(16.0),
                      child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
      new TextFormField(
      decoration: InputDecoration(
      labelText: "Username",icon: new Icon(Icons.person,color: Colors.white,),
  ),
  keyboardType: TextInputType.text,
  autocorrect: true,
  ),
  new TextFormField(
      decoration: InputDecoration(
      labelText: "Password",icon: new Icon(Icons.lock,color: Colors.white,),
  ),
  keyboardType: TextInputType.text,
  obscureText: true,
  autocorrect: true,
  ),
  new Padding(
    padding: const EdgeInsets.only(top: 40.0),
  ),
  new MaterialButton(
    height: 40.0,
    minWidth: 130.0,
    color: Colors.greenAccent,child: 
  new Icon(Icons.arrow_forward,size: 30.0,),
  textColor: Colors.white,
  splashColor: Colors.redAccent,
  onPressed: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
            }) ,
  
  new MaterialButton(child: new Text("Forgot Password?",style: new TextStyle(color: Colors.white),),splashColor: Colors.grey,
  onPressed: (){
     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ForgotPage()),
            );
  }),
  
 
  new MaterialButton( child: new Text("Not a member? Register",style: new TextStyle(color: Colors.white),),splashColor: Colors.grey,
  onPressed: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            );
            },)

      ],
  ),
          ),
    ),
   )
],
    )
], 
      )
    );
  }
}