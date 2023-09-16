import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basicapp2/presenter/controller/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body:
        Center(child: Text(Get.find<ProfilePageController>().title.value)));
  }
}