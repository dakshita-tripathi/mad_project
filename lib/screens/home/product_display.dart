import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:madd/screens/home/product_listing.dart';
import 'package:madd/screens/home/profiletile.dart';
import '../../models/profile_item.dart';
class p_display extends StatefulWidget {
  String cat;
  p_display({required this.cat});

  @override
  _p_displayState createState() => _p_displayState();
}

class _p_displayState extends State<p_display> {
  @override
  List<String> p_name=[];
  List<String> p_cat=[];
  List<String> p_desc=[];
  List<int> pno=[];
  List<int> r_price=[];
  List<int> b_price=[];
  int c=0;
  Widget build(BuildContext context) {
    String cat=widget.cat;
    final Stream<QuerySnapshot> _productStream = FirebaseFirestore.instance.collection('product').snapshots();
    _productStream.forEach((product) {
      product.docs.asMap().forEach((index, data) {
      if(product.docs[index]['cat']==cat){
        p_name.add(product.docs[index]['name']);
        p_cat.add(product.docs[index]['cat']);
        p_desc.add(product.docs[index]['desc']);
        pno.add(product.docs[index]['pno']);
        r_price.add(product.docs[index]['r_price']);
        b_price.add(product.docs[index]['b_price']);
      }
    });});
    return Scaffold(
      appBar: AppBar(title: Text('Proudcts for ${cat}'),),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('product').snapshots(),
    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
      if(!snapshot.hasData){return Center(child: CircularProgressIndicator());}
      final documentSnapshotList = snapshot.data!.docs.where((element) => element['name']==cat);
      c = documentSnapshotList.length;
    if (!snapshot.hasData) {
    return Center(child: Text("snapshot has no data"));
    }
    else {
      if (c == 0) {
        return Text('No available products in this category',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),);
      }
      else{
        final profile = List<Profile_item>.generate(c, (i) => Profile_item(p_name: p_name[i],cat:cat[i],desc: p_desc[i],b_price: b_price[i],r_price: r_price[i],pno: pno[i]));
        return ListView.builder(
          itemCount: profile.length,
          itemBuilder: (context, index) {
            return profiletile(profile: profile[index],ind:index);},
        );
      }
    }}),
    );
  }
}
