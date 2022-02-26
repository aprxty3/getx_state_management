import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  var data = 0.obs;

  void change() => count++;

  void reset() => count.value = 0;

  @override
  void onInit() {
    // Workers

    // TODO: Ever Berguna untuk melihat single data yg berjalan
    // ever(
    //   count,
    //   (_) => print('Menjalankan Perintah ....'),
    // );

    // TODO: everALL Berguna untuk melihat multi data yg berjalan, dilihat dari penggunaan List pada syntaxnya
    // everAll(
    //   [count, data],
    //   (_) => print('Menjalankan Perintah ....'),
    // );

    super.onInit();
  }
}
