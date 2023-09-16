import 'package:basicapp2/presenter/controller/favorites_controller.dart';
import 'package:basicapp2/presenter/controller/settings_controller.dart';
import 'package:get/get.dart';
import 'package:basicapp2/presenter/controller/home_screen_controller.dart';
import 'package:basicapp2/presenter/controller/profile_controller.dart';
import 'package:basicapp2/presenter/controller/search_list_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilePageController>(() => ProfilePageController());
  }
}

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchPageController>(() => SearchPageController());
  }
}

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsPageController>(() => SettingsPageController());
  }
}

class FavoritesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoritesPageController>(() => FavoritesPageController());
  }
}