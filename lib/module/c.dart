import 'package:get/get.dart';

class Controller extends GetxController {
  bool? load = false;
  isload() {
    load = true;
    update();
  }
}
