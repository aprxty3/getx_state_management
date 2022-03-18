import 'package:get/get.dart';
import 'package:getx_state_management/getx18_stateMixin/controlle.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MyC());
  }
}
