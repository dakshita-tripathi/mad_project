import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// class Flash extends StatefulWidget {
//   @override
//   _FlashState createState() => _FlashState();
// }
//
// class _FlashState extends State<Flash> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             height: 550,
//             width: 400,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("images/flash.png"),
//                   alignment: Alignment.topCenter
//               ),
//             ),
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(height: 350,),
//                   Center(
//                       child: Text('WOOH HOO!',style: TextStyle(color: Colors.orange[400],fontSize: 40,fontWeight: FontWeight.w500),)
//                   ),
//                   SizedBox(height: 10,),
//                   Center(
//                       child: Text('Your Mail has been sent to the \nVolunter. They will contact you ASAP.',style: TextStyle(color: Colors.black26,fontSize: 19),)
//                   ),
//
//                 ]
//             )));
//   }
// }
class Flash extends StatefulWidget {
  @override
  _FlashState createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50,),
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/flash.png"),
                      alignment: Alignment.topCenter
                  ),
                ),
              ),
              Center(
                  child: Text('WOOH HOO!',style: TextStyle(color: Colors.deepOrange[300],fontSize: 40,fontWeight: FontWeight.w500),)
              ),
              SizedBox(height: 7,),
              Center(
                  child: Text('Your Mail has been sent.\nThey will contact you ASAP.',style: TextStyle(color: Colors.black26,fontSize: 16),)
              ),

            ]
        ));
  }
}