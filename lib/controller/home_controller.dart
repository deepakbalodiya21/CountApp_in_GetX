import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  // String name = 'Deepak';
  //
  // void changeName() {
  //   name = 'Aditya Kumar';
  //   update();
  // }
  RxInt count = 0.obs;
  void increaseCount() {
    count.value++;
    // update();
  }
}