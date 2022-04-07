import 'package:flutter/material.dart';

import '../../services/auth.dart';
class dv extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person,color: Colors.white,),
              label: Text('logout',style: TextStyle(color: Colors.white),),
              onPressed: () async {
                await _auth.signOut();
              },
            ),]
      ),
        body: Column(children: [
          SizedBox(height: 20,),
          Container(
              child: Text(
                'They What Are You \n Looking For?',
                style: TextStyle(
                    color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 10,),
          Stack(children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.1,
                        blurRadius: 0.1,
                        offset: Offset(0, 1))
                  ]),
            )
          ]),
          Positioned(
              child: Container(width: 10, height: 10, decoration: BoxDecoration())),
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
                  width: 200,
                  color: Colors.orange[100],
                  child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
                SizedBox(height: 4,),
                Container(
                  width: 200,
                  color: Colors.orange[100],
                  child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
                SizedBox(height: 4,),
                Container(
                  width: 200,
                  color: Colors.orange[100],
                  child: const Center(child: Text('Item 3', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
                SizedBox(height: 4,),
                Container(
                  width: 200,
                  color: Colors.orange[100],
                  child: const Center(child: Text('Item 4', style: TextStyle(fontSize: 18, color: Colors.white),)),
                ),
              ],
            ),)]));
  }
}