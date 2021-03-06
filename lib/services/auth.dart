

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:madd/models/user.dart';
import 'package:provider/provider.dart';
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Usser? _userFormFirebaseUser(User? user) {
    return user != null ? Usser(uid: user.uid) : null;
  }
  Stream<Usser?> get user {
    return _auth.authStateChanges().map( _userFormFirebaseUser );
  }
  // Future<String> getCurrentUID() async{
  //     return (await _auth.currentUser()).uid;
  //
  // }
  Future signInWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result=await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user=result.user;
      // await DatabaseService(uid: user!.uid).updateUserData('newTeammate','*',0,0);
      return _userFormFirebaseUser(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
  Future registerWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result=await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user=result.user;
      // await DatabaseService(uid: user!.uid).updateUserData('newTeammate','*',0,0);
      return _userFormFirebaseUser(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
  Future signOut() async {
    try {
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}