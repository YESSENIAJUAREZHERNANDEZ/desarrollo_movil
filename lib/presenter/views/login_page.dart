import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basicapp2/presenter/controller/login_list_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Login'),
        ),
        body:
        Center(child: Text(Get.find<LoginPageController>().title.value)));
  }
}