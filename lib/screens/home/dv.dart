import 'package:flutter/material.dart';
import 'package:madd/screens/home/product_listing.dart';

import '../../services/auth.dart';

class dv extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.person,color: Colors.white,),
                label: Text('logout',style: TextStyle(color: Colors.white),),
                onPressed: () async {
                  await _auth.signOut();
                },
              ),]),
        body: Column(children: [
          SizedBox(height: 20,),
          Container(
              child: Text(
                'Hey, What Are You \n Looking For?',
                style: TextStyle(
                    color: Colors.orange, fontSize: 22, fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 10,),
          TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none), // OutlineInputBo
                  hintText: '   Search ',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18))),
          SizedBox(height: 20,),
          Text(
            'Categories',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          Row(
              children: [
                FlatButton(
                    color: Colors.orange[50],
                    textColor: Colors.orange[700],
                    child: Text('Books',),
                    onPressed: () {}
                ),
                SizedBox(height: 20,width: 10,),
                FlatButton(
                    color: Colors.orange[50],
                    textColor: Colors.orange[700],
                    child: Text('Electronics',),
                    onPressed: () {}
                ),
                SizedBox(height: 20,width: 10,),
                FlatButton(
                    color: Colors.orange[50],
                    textColor: Colors.orange[700],
                    child: Text('Accesories',),
                    onPressed: () {}
                ),
              ]),
          SizedBox(height: 17,),
          Text(
            'New Recomendations',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10,),
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 200,height: 100,
                  color: Colors.orange[100],
                  child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
                SizedBox(height: 4,),
                Container(
                  width: 200,height: 100,
                  color: Colors.orange[100],
                  child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
                SizedBox(height: 4,),
                Container(
                  width: 200,height: 100,
                  color: Colors.orange[100],
                  child: const Center(child: Text('Item 3', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
                SizedBox(height: 4,),
                Container(
                  width: 200,height: 100,
                  color: Colors.orange[100],
                  child: const Center(child: Text('Item 4', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
              ],
            ),),
          SizedBox(height: 17,),
          Text(
            'You May Like',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10,),
          Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 200,height: 100,
                    color: Colors.orange[100],
                    child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                  ),
                  SizedBox(height: 4,),
                  Container(
                    width: 200,height: 100,
                    color: Colors.orange[100],
                    child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
                  ),
                  SizedBox(height: 4,),
                  Container(
                    width: 200,height: 100,
                    color: Colors.orange[100],
                    child: const Center(child: Text('Item 3', style: TextStyle(fontSize: 18, color: Colors.white),)),
                  ),
                  SizedBox(height: 4,),
                  Container(
                    width: 200,height: 100,
                    color: Colors.orange[100],
                    child: const Center(child: Text('Item 4', style: TextStyle(fontSize: 18, color: Colors.white),)),
                  ),
                ],
              )
          ),
          RaisedButton.icon(
            color: Colors.white,
            label: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget>[
                  Container(
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.orangeAccent,
                            Colors.redAccent,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20),),
                      child: Center(
                        child: Text(
                          'Sell',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                  )]),
            icon: Icon(
              Icons.add,
              color: Colors.transparent,
              size: 0.0,
            ),
            elevation: 0,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => P_list()),
            ),
            padding: EdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(48.0))),
          ),
        ]));

  }
}