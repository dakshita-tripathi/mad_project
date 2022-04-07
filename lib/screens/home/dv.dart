// import 'package:flutter/material.dart';
// import 'package:madd/screens/home/product_display.dart';
// import 'package:madd/screens/home/product_listing.dart';
//
// import '../../services/auth.dart';
//

//     return Scaffold(
//       appBar: AppBar(actions: <Widget>[
//         FlatButton.icon(
//           icon: Icon(Icons.person,color: Colors.white,),
//           label: Text('logout',style: TextStyle(color: Colors.white),),
//           onPressed: () async {
//             await _auth.signOut();
//           },
//         ),]),
//         body: SingleChildScrollView(
//           child: Column(children: [
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//                 child: Text(
//                   'Hey, What Are You \n Looking For?',
//                   style: TextStyle(
//                       color: Colors.orange, fontSize: 22, fontWeight: FontWeight.bold),
//                 )),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               child:TextField(
//                   cursorColor: Colors.grey,
//                   decoration: InputDecoration(
//                       fillColor: Colors.orange[50],
//                       filled: true,
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide.none), // OutlineInputBo
//                       hintText: '   Search ',
//                       hintStyle: TextStyle(color: Colors.grey, fontSize: 18)),
//               ),),
//
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               'Categories',
//               textAlign: TextAlign.left,
//               style: TextStyle(
//                   color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//                 height: 30,
//                 child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
//                   Container(
//                       child: FlatButton(
//                           color: Colors.orange[50],
//                           textColor: Colors.orange[700],
//                           child: Text(
//                             'Electronics',
//                           ),
//                           onPressed: () {Navigator.push(
//                               context, MaterialPageRoute(builder: (context) => p_display(cat:'electronics')));})),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Container(
//                       child: FlatButton(
//                           color: Colors.orange[50],
//                           textColor: Colors.orange[700],
//                           child: Text(
//                             'Books',
//                           ),
//                           onPressed: () {Navigator.push(
//                               context, MaterialPageRoute(builder: (context) => p_display(cat:'books')));})),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Container(
//                       child: FlatButton(
//                           color: Colors.orange[50],
//                           textColor: Colors.orange[700],
//                           child: Text(
//                             'Coolers',
//                           ),
//                           onPressed: () {Navigator.push(
//                               context, MaterialPageRoute(builder: (context) => p_display(cat:'cooler')));})),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Container(
//                       child: FlatButton(
//                           color: Colors.orange[50],
//                           textColor: Colors.orange[700],
//                           child: Text(
//                             'Daily Need',
//                           ),
//                           onPressed: () {Navigator.push(
//                               context, MaterialPageRoute(builder: (context) => p_display(cat:'daily needs')));})),
//                   SizedBox(
//                     height: 20,
//                     width: 10,
//                   ),
//                   Container(
//                       child: FlatButton(
//                           color: Colors.orange[50],
//                           textColor: Colors.orange[700],
//                           child: Text(
//                             'Accessories',
//                           ),
//                           onPressed: () {Navigator.push(
//                               context, MaterialPageRoute(builder: (context) => p_display(cat:'accessories')));})),
//                 ])),
//             SizedBox(
//               height: 17,
//             ),
//             Text(
//               'New Recomendations',
//               textAlign: TextAlign.left,
//               style: TextStyle(
//                   color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//                 height: 100,
//                 child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
//                   Container(
//                     width: 200,
//                     decoration: BoxDecoration(
//
//                       image: DecorationImage(
//                         image: AssetImage("images/b.png"),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Container(
//                     width: 200,
//                     decoration: BoxDecoration(
//
//                       image: DecorationImage(
//                         image: AssetImage("images/f.png"),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 4,
//                   ),
//                   Container(
//                     width: 160,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage("images/h.png"),
//                       ),
//                     ),
//                   ),
//                 ])),
//             SizedBox(
//               height: 17,
//             ),
//             Text(
//               'You May Like',
//               style: TextStyle(
//                   color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//                 height: 80,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: <Widget>[
//                     Container(
//                       width: 200,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage("images/a.png"),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     Container(
//                       width: 200,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage("images/b.png"),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     Container(
//                       width: 200,
//                       decoration: BoxDecoration(
//
//                         image: DecorationImage(
//                           image: AssetImage("images/f.png"),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     Container(
//                       width: 200,
//                       decoration: BoxDecoration(
//
//                         image: DecorationImage(
//                           image: AssetImage("images/f.png"),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )),
//             SizedBox(
//               height: 40,
//             ),
//             RaisedButton.icon(
//               color: Colors.white,
//               label: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                         width: 70,
//                         height: 70,
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [
//                               Colors.orangeAccent,
//                               Colors.redAccent,
//                             ],
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                           ),
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Sell',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ))
//                   ]),
//               icon: Icon(
//                 Icons.add,
//                 color: Colors.white,
//                 size: 0.0,
//               ),
//               elevation: 0,
//               onPressed: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => P_list()));
//               },
//               padding: EdgeInsets.symmetric(vertical: 5),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(5.0))),
//             ),
//           ]),
//         )
//     );
//   }
//}
import 'package:flutter/material.dart';
import 'package:madd/screens/home/product_display.dart';
import 'package:madd/screens/home/product_listing.dart';
import '../../services/auth.dart';
class dv extends StatefulWidget {
  @override
  _dvState createState() => _dvState();
}
class _dvState extends State<dv> {
  final AuthService _auth = AuthService();
  String cat='';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Column(children: [
          SizedBox(
            height: 55,
          ),
          Container(
              child: Text(
                'Hey, What Are You \n Looking For?',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    fillColor: Colors.orange[50],
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none), // OutlineInputBo
                    hintText: '   Search ',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),),
                    onChanged: (val) {setState(() => cat = val);},
            ),
          ),
          RaisedButton(onPressed: (){Navigator.push(
              context, MaterialPageRoute(builder: (context) => p_display(cat:cat)));}, child: Text('Search'),),
          SizedBox(
            height: 20,
          ),
          Text(
            'Categories',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 30,
              child:
              ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                Container(
                    child: FlatButton(
                        color: Colors.orange[50],
                        textColor: Colors.orange[700],
                        child: Text(
                          'Electronics',
                        ),
                        onPressed: () {Navigator.push(
                            context, MaterialPageRoute(builder: (context) => p_display(cat:'electronics')));})),
                SizedBox(
                  width: 10,
                ),
                Container(
                    child: FlatButton(
                        color: Colors.orange[50],
                        textColor: Colors.orange[700],
                        child: Text(
                          'Books',
                        ),
                        onPressed: () {Navigator.push(
                            context, MaterialPageRoute(builder: (context) => p_display(cat:'books')));})),
                SizedBox(
                  width: 10,
                ),
                Container(
                    child: FlatButton(
                        color: Colors.orange[50],
                        textColor: Colors.orange[700],
                        child: Text(
                          'Coolers',
                        ),
                        onPressed: () {Navigator.push(
                            context, MaterialPageRoute(builder: (context) => p_display(cat:'cooler')));})),
                SizedBox(
                  width: 10,
                ),
                Container(
                    child: FlatButton(
                        color: Colors.orange[50],
                        textColor: Colors.orange[700],
                        child: Text(
                          'Daily Need',
                        ),
                        onPressed: () {Navigator.push(
                            context, MaterialPageRoute(builder: (context) => p_display(cat:'daily needs')));})),
                SizedBox(
                  height: 20,
                  width: 10,
                ),
                Container(
                    child: FlatButton(
                        color: Colors.orange[50],
                        textColor: Colors.orange[700],
                        child: Text(
                          'Accessories',
                        ),
                        onPressed: () {Navigator.push(
                            context, MaterialPageRoute(builder: (context) => p_display(cat:'accessories')));})),
              ])),
          SizedBox(
            height: 17,
          ),
          Text(
            'New Recomendations',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 100,
              child:
              ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/b.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/f.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/h.png"),
                    ),
                  ),
                ),
              ])),
          SizedBox(
            height: 17,
          ),
          Text(
            'You May Also Like',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/a.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/p.png",),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/x.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/h.png"),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 40,
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          focusColor: Colors.orange,
          backgroundColor: Colors.orange,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => P_list()),
            );
          },
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.add,color: Colors.orange,),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 0,
          child: Container(
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                              minWidth: 40,
                              onPressed: () {},
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.home_outlined),
                                    Text('HOME',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                        ))
                                  ])),
                          SizedBox(width: 240,),
                          MaterialButton(
                              minWidth: 40,
                              onPressed: () async {await _auth.signOut();},
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.logout),
                                    Text('LOGOUT',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                        ))
                                  ]))
                        ])
                  ])),
        ));
  }
}