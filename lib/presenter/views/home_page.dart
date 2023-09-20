import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basicapp2/presenter/controller/home_screen_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: '/Login',
          onGenerateRoute: controller.onGenerateRoute,
        ),
        bottomNavigationBar: Obx(
              () => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.changePage,
            selectedItemColor: Colors.blueAccent,
            items: const [
              //  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
              BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites')
            ],
          ),
        ));
  }
}