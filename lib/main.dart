import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basicapp2/presenter/bindings/app_bindings.dart';
import 'package:basicapp2/presenter/views/home_page.dart';


void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/Home',
    defaultTransition: Transition.fade,
    getPages: [
      GetPage(name: '/Home', page: () => HomePage(), binding: HomeBinding()),
    ],
  ));
}