import 'package:amazon_cambodia/controller/calculator_controller.dart';
import 'package:amazon_cambodia/controller/theme_controller.dart';
import 'package:get/instance_manager.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalculateController());
    Get.lazyPut(() => ThemeController());
  }
}
