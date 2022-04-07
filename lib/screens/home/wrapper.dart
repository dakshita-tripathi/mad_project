import 'package:flutter/material.dart';
import 'package:madd/models/user.dart';
import 'package:madd/screens/authentication/authenticate.dart';
import 'package:provider/provider.dart';
import 'dv.dart';
import 'package:madd/screens/authentication/register.dart';
class wrapper extends StatelessWidget {
  const wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Usser?>(context);
    if( user==null){
      return Register();//not signed in->login/sign in
    }
    else{
      return dv();//call home screen
    }
  }
}
