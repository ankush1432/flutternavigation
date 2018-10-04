import 'package:flutter/material.dart';
import 'package:picks/login_page.dart';

void main(){
 runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MY APP",
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
      theme: new ThemeData(
        primaryColor: Colors.grey,
        primaryColorDark: Colors.teal,
        accentColor: Colors.red,
        brightness: Brightness.light,
      ),
    );
  }
}





class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data="Hello I M PROGRAMMER";
   static const EdgeInsets _padding = const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0);
  Color borderColor = Colors.blue;
  bool nameFlag = false;

void _ChangeText(){
setState(() {
  if(data.startsWith("H")){
data="PROGRAMMER NO LIFE ";
  }else{
data="Hello I M PROGRAMMER ";
  }
  
});
}

  Widget _CustomFunction(){
  return new Container(
padding:const EdgeInsets.all(10.00),
child: new Center(
child: new Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    new Text(data,style: new TextStyle(color: Colors.red,fontSize: 18.0),),
    new RaisedButton(child: new Text("Press ME",style: new TextStyle(color: Colors.white),),color: Colors.blue,
    onPressed: _ChangeText,),
    
  ],
),
),
  );
}
//  void validateName(String value) {
//     final RegExp nameExp = new RegExp(r'^[A-Za-z ]+$');
//     if (!nameExp.hasMatch(value) || value.isEmpty)
//       borderColor = Colors.red;
//     else
//       borderColor = Colors.blue;
//   }
// Widget _Form(){
//   final theme = Theme.of(context);
//   return new Container(
//     padding: const EdgeInsets.all(10.0),
//     child: new Center(
//       child: new Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//            new Flexible(
//           child: new Container(
//             margin: _padding,
//             padding: _padding,
//             child: new TextField(
//               decoration: new InputDecoration.collapsed(
//                 hintText: "Enter Name",
//               ),
//               onChanged: (s) {
//                 setState(() => validateName(s));
//               },
//             ),
            
//             decoration: new BoxDecoration(
//               color: Colors.white,
//               border: new Border(
//                 bottom: new BorderSide(color: borderColor, style: BorderStyle.solid),
//               ),
//             ),
           
//           ),
          
//         ),
//          new Flexible(
//           child: new Container(
//             margin: _padding,
//             padding: _padding,
//             child: new TextField(
//               decoration: new InputDecoration.collapsed(
//                 hintText: "Enter Password",
//               ),
//               onChanged: (s) {
//                 setState(() => validateName(s));
//               },
//             ),
            
//             decoration: new BoxDecoration(
//               color: Colors.white,
//               border: new Border(
//                 bottom: new BorderSide(color: borderColor, style: BorderStyle.solid),
//               ),
//             ),
           
//           ),
          
//         ),
// //           Padding(
// //             padding: const EdgeInsets.symmetric(vertical: 16.0),),
// //            new TextField(
// //             decoration: InputDecoration(
// //               hintText: "Password",

// //             ),
// //             autocorrect: true,
// //           ),
//            Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),),
// new RaisedButton(onPressed: null,child: new Text("Login"),)
//         ],
//       ),
//     ),
//   );
// }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("Home Page"),

      ),
      body: _CustomFunction(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add_photo_alternate),
        onPressed: _ChangeText,
      ),
      
      
    );
  }
}
