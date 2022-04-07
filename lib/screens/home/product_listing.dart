import 'package:flutter/material.dart';
class P_list extends StatefulWidget {
  const P_list({Key? key}) : super(key: key);

  @override
  _P_listState createState() => _P_listState();
}

class _P_listState extends State<P_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('list your product here')),
    );
  }
}
