import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:madd/screens/home/flash.dart';
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
    final Shader _linearGradient = LinearGradient(
      colors: [Colors.orange, Colors.red],
      begin: Alignment.centerLeft,
      end: Alignment.bottomRight,
    ).createShader(Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  Container(
                      child: Text(
                        'Heyy, What Are You \nLooking For?',
                        style: TextStyle(foreground: Paint()..shader = _linearGradient,
                            fontSize: 29,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(Icons.search,color: Colors.grey,),
                            onPressed: (){Navigator.push(
                     context, MaterialPageRoute(builder: (context) => p_display(cat: cat)));},

                        ),
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
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Categories',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                      height: 60,
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
                                    context, MaterialPageRoute(builder: (context) => p_display(cat: 'electronics')));})),
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
                                    context, MaterialPageRoute(builder: (context) => p_display(cat: 'books')));})),
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
                                    context, MaterialPageRoute(builder: (context) => p_display(cat: 'cooler')));})),
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
                                    context, MaterialPageRoute(builder: (context) => p_display(cat: 'daily needs')));})),
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
                                    context, MaterialPageRoute(builder: (context) => p_display(cat: 'accessories')));})),
                      ])),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    'New Recomendations',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 115,
                      child:
                      ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                        SizedBox(
                          height: 4,width: 6,
                        ),
                        Container(
                          width: 200,padding: EdgeInsets.fromLTRB(2, 7, 2, 17),
                          decoration: BoxDecoration(
                            color: Colors.orange[200],borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage("images/b.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,width: 10,
                        ),
                        Container(padding: EdgeInsets.fromLTRB(2, 2, 2, 7),
                          width: 200,
                          decoration: BoxDecoration( color: Colors.orange[200],borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage("images/a.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          width: 200,
                          decoration: BoxDecoration( color: Colors.orange[200],borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage("images/x.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,width: 6,
                        ),
                      ])),

                  SizedBox(
                    height: 17,
                  ),

                  Text(
                    'You May Also Like',
                    style: TextStyle(
                        color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 10,),

                  Container(
                      height: 185,
                      child:
                      ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                        SizedBox(
                          height: 4,width: 6,
                        ),
                        Container(
                          width: 200,padding: EdgeInsets.fromLTRB(2, 7, 2, 17),
                          decoration: BoxDecoration(
                            color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                              image: AssetImage("images/p.png"),
                                fit: BoxFit.fill
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,width: 10,
                        ),
                        Container(padding: EdgeInsets.fromLTRB(2, 2, 2, 7),
                          width: 200,
                          decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                              image: AssetImage("images/h.png"),
                              fit: BoxFit.fill
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          width: 200,
                          decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                              image: AssetImage("images/f.png"),
                                fit: BoxFit.fill
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,width: 6,
                        ),
                      ])),])
        ),
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
              height: 50,
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