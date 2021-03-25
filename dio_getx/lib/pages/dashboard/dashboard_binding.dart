import 'package:dio_getx/pages/home/home_controller.dart';
import 'package:dio_getx/pages/posts/post_controller.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<PostsController>(() => PostsController());
  }
}
