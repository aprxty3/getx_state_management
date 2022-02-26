import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  var data = 0.obs;

  void change() => count++;

  void reset() => count.value = 0;

  @override
  void onInit() {
    //Kelima function dibawah atau disebut Workers, hanya dapat berjalan di onInit()

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

    // TODO: once Berguna untuk melihat data yg berjalan hanya sekali
    // once(
    //   count,
    //   (_) => print('Menjalankan Perintah ....'),
    // );

    // TODO: debounce Berguna untuk melihat data yg berjalan dan terdapat delay sesuai yg diperintahkan, dilihat terdapat parameter Time Duration
    // debounce(
    //   count,
    //   (_) => print('Menjalankan Perintah ....'),
    //   time: Duration(
    //     seconds: 3,
    //   ),
    // );

    // TODO: interval hampir mirip dengan debounce, yg jadi pembeda, jika ada proses pada perubahan data, data tetap dapat dibaca tetapi didelay sesuai perintah
    // interval(
    //   count,
    //   (_) => print('Menjalankan Perintah ....'),
    //   time: Duration(
    //     seconds: 3,
    //   ),
    // );

    super.onInit();
  }
}
