import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterVm extends ChangeNotifier {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? firstName, lastName, email, password, confirmPassword;
  FocusNode firstNameFn = FocusNode();
  FocusNode lastNameLn = FocusNode();
  FocusNode emailEM = FocusNode();
  FocusNode confirmPasswordCD = FocusNode();
  bool validate = false;
  bool loading = false;

setFirstName(value) {
    firstName = value;
    notifyListeners();
}
setLastName(value) {
    lastName = value;
    notifyListeners();
}
  setEmal(value) {
    email = value;
    notifyListeners();
  }
setPassword(value) {
    password = value;
    notifyListeners();
}
setConfirmPassWord(value) {
    confirmPassword = value;
    notifyListeners();
}
  

  register() async {
    FormState? form = formKey.currentState;
    form!.save();
    if (!form.validate()) {
      validate = true;
      notifyListeners();
      showInSnackBar('please fill out form correctly');
    }
    if(password == confirmPassword){

    }
  }

  void showInSnackBar(String s) {}
}
