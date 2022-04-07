import 'package:flutter/material.dart';

import '../../models/profile_item.dart';
class profiletile extends StatefulWidget {
  final Profile_item profile; int ind;
  profiletile({required this.profile, required this.ind});

  @override
  _profiletileState createState() => _profiletileState();
}

class _profiletileState extends State<profiletile> {
  @override
  Widget build(BuildContext context) {
    Profile_item profile =widget.profile;
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
          children:[
      Card(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    color: Colors.orange[50],
    margin: EdgeInsets.only(top: 20.0),
    child: Column(
    children:[
    ListTile(
    // leading: CircleAvatar(
    // radius: 15,
    // backgroundImage: AssetImage('images/user.png'),
    // ),
    title: Text(profile.p_name,style: TextStyle(color: Colors.orange[900]),),
    subtitle: Text(
    // 'has ${profile.cc_rank} stars on CodeChef \n has ${profile.he_rank} rank on HackerEarth \n has ${profile.apk_points} points in APK Month \n and is interested in ${profile.interests} \n Contact number: ${profile.pno}'
    'Description:  ${profile.desc} \nContact number: ${profile.pno} '
    ),
    ),
      Row(
        children: [
          SizedBox(width: 20.0),
          SizedBox(width: MediaQuery.of(context).size.height/5,child: Text("Rent price: ${profile.r_price}",textAlign: TextAlign.center,),),
          SizedBox(width: MediaQuery.of(context).size.height/20),
          SizedBox(width: MediaQuery.of(context).size.height/5,child: Text("Buying price: ${profile.b_price}",textAlign: TextAlign.center,),),
        ],
      ),
    ]))]));
  }
}
