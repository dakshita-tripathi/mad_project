// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../models/user.dart';
// import '../../services/database.dart';
// import '../../shared/constraints.dart';
// import 'dv.dart';
// class P_list extends StatefulWidget {
//   const P_list({Key? key}) : super(key: key);
//
//   @override
//   _P_listState createState() => _P_listState();
// }
//
// class _P_listState extends State<P_list> {
//   String p_name=''; String cat='';
//   String desc=''; String email='';
//   int pno=0; int r_price=0; int b_price=0;
//   final _formKey = GlobalKey<FormState>();
//   @override
//   final List<String> items = [
//     'cooler',
//     'accessories',
//     'books',
//     'electronics'
//   ];
//   Widget build(BuildContext context) {
//     final user = Provider.of<Usser?>(context);
//     return Scaffold(
//       appBar: AppBar(title:Text('list your product here')),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//     child:SingleChildScrollView(
//     child:Form(
//     key: _formKey,
//     child: Column(children: <Widget>[
//       SizedBox(height: 20.0),
//       Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
//       TextFormField(
//         decoration: textInputDecoration.copyWith(hintText: 'Product Name'),
//         validator: (val) =>
//         val!.isEmpty ? 'please enter your product name' : null,
//         onChanged: (val) => setState(() => p_name = val),
//       ),
//       SizedBox(height: 20.0),
//       Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
//       // TextFormField(
//       //   decoration: textInputDecoration.copyWith(hintText: 'Product Category(books/cooler/accessories/electronics)'),
//       //   validator: (val) =>
//       //   val!.isEmpty ? 'please enter your product category' : null,
//       //   onChanged: (val) => setState(() => cat = val),
//       // ),
//       DropdownButtonFormField(
//           decoration: textInputDecoration.copyWith(hintText: 'Category'),
//           items: items.map((items) {
//             return DropdownMenuItem(
//                 child: Text('${items}'), value: items);
//           }).toList(),
//           onChanged: (val) {
//             setState(() => p_name = val! as String);
//           }),
//       SizedBox(height: 20.0),
//       Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
//       TextFormField(
//         decoration: textInputDecoration.copyWith(hintText: 'Product Description'),
//         validator: (val) =>
//         val!.isEmpty ? 'please enter your product description' : null,
//         onChanged: (val) => setState(() => desc = val),
//       ),
//       SizedBox(height: 20.0),
//       Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
//       TextFormField(
//         decoration: textInputDecoration.copyWith(hintText: 'Your Contact number',prefixText:'+91'),
//         validator: (val) =>
//         val!.isEmpty ? 'please enter your contact number' : null,
//         onChanged: (val) => setState(() => pno = int.parse(val)),
//       ),

//       SizedBox(height: 20.0),
//       Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
//       TextFormField(
//         decoration: textInputDecoration.copyWith(hintText: 'Rent price of your product',prefixText:'Rs'),
//         validator: (val) =>
//         val!.isEmpty ? 'please enter rent price of your product' : null,
//         onChanged: (val) => setState(() => r_price = int.parse(val)),
//       ),
//       SizedBox(height: 20.0),
//       Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0),),
//       TextFormField(
//         decoration: textInputDecoration.copyWith(hintText: 'Buying price of your product',prefixText: 'Rs'),
//         validator: (val) =>
//         val!.isEmpty ? 'please enter buying price of your product' : null,
//         onChanged: (val) => setState(() => b_price = int.parse(val)),
//       ),
//       RaisedButton(child: Text(
//         'Enlist your product',
//         style: TextStyle(color: Colors.black, fontSize: 20.0),
//       ),onPressed: () async{if (_formKey.currentState!.validate()) {
//         final CollectionReference productCollection =
//         FirebaseFirestore.instance.collection('product');
//         productCollection.add(  { 'name':p_name,
//           'cat':cat,
//             'desc':desc,
//             'pno':pno,
//             'r_price':r_price,
//             'b_price':b_price,
//           'email':email,
//         });}
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => dv()));
//     })
//     ])))
//       ),
//     );
//   }
// }
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../models/user.dart';
import '../../services/database.dart';
import '../../shared/constraints.dart';
import 'dv.dart';

class P_list extends StatefulWidget {
  const P_list({Key? key}) : super(key: key);

  @override
  _P_listState createState() => _P_listState();
}

class _P_listState extends State<P_list> {
  String p_name = '';
  String cat = '';
  String desc = '';
  String email = '';
  int pno = 0;
  int r_price = 0;
  int b_price = 0;
  String? url;
  final _formKey = GlobalKey<FormState>();
  File? _image;
  @override
  Future getImage() async {
    try {
      ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
      if (image == null) return;
      _image = File(image.path);
      setState(()  {});
      url=await uploadPic();
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
  Future<String> uploadPic() async{
    FirebaseStorage storage = FirebaseStorage.instance;
  Reference ref = storage.ref().child("image1" +DateTime.now().toString());
  UploadTask uploadTask= ref.putFile(_image!);
  uploadTask.whenComplete(() async{url = await ref.getDownloadURL();
  });
  if(url!=null)
    return url!;
  else{
    return url= await ref.getDownloadURL();
  }
  }
  addproducts() async{}
  final List<String> items = ['cooler', 'accessories', 'books', 'electronics','daily needs'];
  Widget build(BuildContext context) {
    final Shader _linearGradient = LinearGradient(
      colors: [Colors.orange, Colors.red],
      begin: Alignment.centerLeft,
      end: Alignment.bottomRight,
    ).createShader(Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));
    final user = Provider.of<Usser?>(context);
    return Scaffold(
        appBar: new PreferredSize(
          child: new Container(
            padding:
                new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: new Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
              child: new Text('Enter Details',
                style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            decoration: new BoxDecoration(
              gradient: new LinearGradient(colors: [
                Colors.orangeAccent,
                Colors.redAccent,
              ]),
            ),
          ),
          preferredSize: new Size(MediaQuery.of(context).size.width, 150.0),
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(9, 0, 9, 0),
            child: SingleChildScrollView(
                child: Form(
              key: _formKey,
              child: Column(children: <Widget>[
                Container(
                    child: SingleChildScrollView(
                        reverse: true,
                        child: Column(children: [_image != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.file(_image!, width: 150, height: 150, fit: BoxFit.cover),
                                )
                              : ClipRRect(borderRadius: BorderRadius.circular(50.0),
                                  child: FlutterLogo(size: 150)
                          ),
                          SizedBox(height: 30.0),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          ),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Product Name',
                                prefixText: ' ',
                                hoverColor: Colors.orange[400],
                                fillColor: Colors.orange[50]),
                            validator: (val) => val!.isEmpty
                                ? 'please enter your product name'
                                : null,
                            onChanged: (val) => setState(() => p_name = val),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          ),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                              hintText: 'Product Description',
                              prefixText: ' ',
                              hoverColor: Colors.orange[400],
                              fillColor: Colors.orange[50],
                            ),
                            validator: (val) => val!.isEmpty
                                ? 'please enter your product description'
                                : null,
                            onChanged: (val) => setState(() => desc = val),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          ),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                              hintText: 'Your email id',
                              prefixText: '  ',
                              hoverColor: Colors.orange[400],
                              fillColor: Colors.orange[50],
                            ),
                            validator: (val) =>
                                val!.isEmpty ? 'please enter your email' : null,
                            onChanged: (val) => setState(() => email = val),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          ),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                              hintText: ' Your Contact number',
                              prefixText: '+91',
                              hoverColor: Colors.orange[400],
                              fillColor: Colors.orange[50],
                            ),
                            validator: (val) => val!.isEmpty
                                ? 'please enter your contact number'
                                : null,
                            onChanged: (val) =>
                                setState(() => pno = int.parse(val)),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          ),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                              hintText: ' Rent price of your product',
                              prefixText: 'Rs',
                              hoverColor: Colors.orange[400],
                              fillColor: Colors.orange[50],
                            ),
                            validator: (val) => val!.isEmpty
                                ? 'please enter rent price of your product'
                                : null,
                            onChanged: (val) =>
                                setState(() => r_price = int.parse(val)),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          ),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                              hintText: ' Buying price of your product',
                              prefixText: 'Rs',
                              hoverColor: Colors.orange[400],
                              fillColor: Colors.orange[50],
                            ),
                            validator: (val) => val!.isEmpty
                                ? 'please enter buying price of your product'
                                : null,
                            onChanged: (val) =>
                                setState(() => b_price = int.parse(val)),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                              width: 300,
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 30),
                              decoration: BoxDecoration(
                                color: Colors.orange[50],
                              ),
                              child: DropdownButtonFormField(
                                  decoration: textInputDecoration.copyWith(
                                    hintText: 'Category of your product',
                                    prefixText: '  ',
                                    hoverColor: Colors.orange[400],
                                    fillColor: Colors.orange[50],
                                  ),
                                  dropdownColor: Colors.orange[50],
                                  focusColor: Colors.red,
                                  items: items.map((items) {
                                    return DropdownMenuItem(
                                        child: Text('${items}'), value: items);
                                  }).toList(),
                                  onChanged: (val) {
                                    setState(() => cat = val! as String);
                                  })),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                            child: SizedBox(
                              child: DecoratedBox(
                                decoration: const BoxDecoration(color: Colors.blue),
                                child: Row(
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () { getImage();},
                                      backgroundColor: Colors.green,
                                      child: Icon(Icons.add_photo_alternate_outlined),
                                    ),
                                    Text(' Add your product image'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          RaisedButton(
                            color: Colors.white70,
                            highlightElevation: 0,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 150,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.orangeAccent,
                                          Colors.redAccent,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Add to Sell',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0),
                                      ),
                                    ),
                                  )
                                ]),
                            onPressed: ()  async {

                              if (_formKey.currentState!.validate() ) {
                                final CollectionReference productCollection = FirebaseFirestore.instance.collection('product');
                                await productCollection.add({
                                  'url': url,
                                  'name': p_name,
                                  'cat': cat,
                                  'desc': desc,
                                  'email': email,
                                  'pno': pno,
                                  'r_price': r_price,
                                  'b_price': b_price
                                }).then((value){Navigator.push(context, MaterialPageRoute(builder: (context) => dv()));});
                            }
                            },
                            padding: EdgeInsets.symmetric(vertical: 0),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(58.0))),)
                        ])))
              ]),
            ))));
  }
}
