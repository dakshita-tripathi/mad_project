import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/user.dart';
import '../../services/database.dart';
import '../../shared/constraints.dart';
class P_list extends StatefulWidget {
  const P_list({Key? key}) : super(key: key);

  @override
  _P_listState createState() => _P_listState();
}

class _P_listState extends State<P_list> {
  String p_name=''; String cat='';
  String desc='';
  int pno=0; int r_price=0; int b_price=0;
  final _formKey = GlobalKey<FormState>();
  @override
  final List<String> items = [
    'cooler',
    'accessories',
    'books',
    'electronics'
  ];
  Widget build(BuildContext context) {
    final user = Provider.of<Usser?>(context);
    return Scaffold(
      appBar: AppBar(title:Text('list your product here')),
      body: Container(
        height: double.infinity,
        width: double.infinity,
    child:SingleChildScrollView(
    child:Form(
    key: _formKey,
    child: Column(children: <Widget>[
      SizedBox(height: 20.0),
      Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
      TextFormField(
        decoration: textInputDecoration.copyWith(hintText: 'Product Name'),
        validator: (val) =>
        val!.isEmpty ? 'please enter your product name' : null,
        onChanged: (val) => setState(() => p_name = val),
      ),
      SizedBox(height: 20.0),
      Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
      // TextFormField(
      //   decoration: textInputDecoration.copyWith(hintText: 'Product Category(books/cooler/accessories/electronics)'),
      //   validator: (val) =>
      //   val!.isEmpty ? 'please enter your product category' : null,
      //   onChanged: (val) => setState(() => cat = val),
      // ),
      DropdownButtonFormField(
          items: items.map((items) {
            return DropdownMenuItem(
                child: Text('${items}'), value: items);
          }).toList(),
          onChanged: (val) {
            setState(() => p_name = val! as String);
          }),
      SizedBox(height: 20.0),
      Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
      TextFormField(
        decoration: textInputDecoration.copyWith(hintText: 'Product Description'),
        validator: (val) =>
        val!.isEmpty ? 'please enter your product description' : null,
        onChanged: (val) => setState(() => desc = val),
      ),
      SizedBox(height: 20.0),
      Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
      TextFormField(
        decoration: textInputDecoration.copyWith(hintText: 'Your Contact number',prefixText:'+91'),
        validator: (val) =>
        val!.isEmpty ? 'please enter your contact number' : null,
        onChanged: (val) => setState(() => pno = int.parse(val)),
      ),
      SizedBox(height: 20.0),
      Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
      TextFormField(
        decoration: textInputDecoration.copyWith(hintText: 'Rent price of your product',prefixText:'Rs'),
        validator: (val) =>
        val!.isEmpty ? 'please enter rent price of your product' : null,
        onChanged: (val) => setState(() => r_price = int.parse(val)),
      ),
      SizedBox(height: 20.0),
      Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
      TextFormField(
        decoration: textInputDecoration.copyWith(hintText: 'Buying price of your product',prefixText: 'Rs'),
        validator: (val) =>
        val!.isEmpty ? 'please enter buying price of your product' : null,
        onChanged: (val) => setState(() => b_price = int.parse(val)),
      ),
      RaisedButton(child: Text(
        'Enlist your product',
        style: TextStyle(color: Colors.black, fontSize: 20.0),
      ),onPressed: () async{if (_formKey.currentState!.validate()) {
        final CollectionReference productCollection =
        FirebaseFirestore.instance.collection('product');
        productCollection.add(  { 'name':p_name,
          'cat':cat,
            'desc':desc,
            'pno':pno,
            'r_price':r_price,
            'b_price':b_price});}
    })
    ])))
      ),
    );
  }
}
