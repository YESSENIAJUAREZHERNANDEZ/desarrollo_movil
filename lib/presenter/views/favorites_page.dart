import 'package:basicapp2/presenter/controller/favorites_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Favorites'),
        ),
        body:
        Center(child: Text(Get.find<FavoritesPageController>().title.value)));
  }
}