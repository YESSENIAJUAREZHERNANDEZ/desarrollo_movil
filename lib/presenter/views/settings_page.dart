import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basicapp2/presenter/controller/settings_controller.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body:
        Center(child: Text(Get.find<SettingsPageController>().title.value)));
  }
}