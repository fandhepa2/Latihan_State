import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MethodController extends GetxController {
  // Variabel
  TextEditingController inputPanjang = TextEditingController();
  TextEditingController inputLebar = TextEditingController();

  var luasP = 0.0.obs;
  //  time reactive
  RxInt angka = 0.obs;

  // tipe biasa
  int counter = 0;

  // function
  // Untuk menambahkan Nilai

  void increment() {
    angka++;
  }

  void decrement() {
    if (angka >= 1) {
      angka--;
    }
  }

  // function update()
  void plus() {
    counter++;
    update();
  }

  void minus() {
    if (counter >= 1) {
      counter--;
    }
    update();
  }

  // FUNCTION HITUNG LUAS P
  void HitungLuasP(double panjang, double lebar) {
    luasP.value = panjang * lebar;
  }
}
