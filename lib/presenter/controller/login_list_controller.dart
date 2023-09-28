import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController{
  final title = 'Login'.obs;
  final formKey = GlobalKey<FormState>();

  var email = ''.obs;
  var password = ''.obs;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? emailvalidator(String? value){
    if (value!.isEmpty || !value.contains('@')){
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? passwordValidator(String? value){
    if (value!.isEmpty || value.length <8 ){
      return '8 CARACTERES PORFAA; must 8';
    }
    return null;
  }

  void submitAttempt(){
    final isValid = formKey.currentState!.validate();
    if(isValid){
      Get.snackbar('Success','Login Successful');
      Get.focusScope!.unfocus();
      print(emailController.text);
      print(passwordController.text);
    }
  }

}