import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_deliver_app/utils/firebase.dart';

class AuthService{


  Future<bool> createUser(String? firstName, lastName, email, passWord, confirmPassword)async{
    var res = await auth.createUserWithEmailAndPassword(email: email, password: passWord);
    if(res.user != null){
      await saveUserToFirestore(firstName, lastName, res.user);
      return true;
    }else{
      return false;
    }
  }

  saveUserToFirestore(String? firstName, lastName, User? user) async{
    await userRef.doc(user!.uid).set({
      'firstName':firstName,
      'lastName': lastName,
    });
  }
}