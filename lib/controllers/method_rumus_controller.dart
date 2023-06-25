import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MethodRumusController extends GetxController {
  // variabel Jari Jari Lingkaran
  TextEditingController inputJariJari = TextEditingController();
  // variabel Segitiga
  TextEditingController inputalas = TextEditingController();
  TextEditingController inputtinggi = TextEditingController();
// variabel Trapesium
  TextEditingController inputalasA = TextEditingController();
  TextEditingController inputalasB = TextEditingController();
  TextEditingController inputinggiT = TextEditingController();

  var LuasLingkaran = 0.0.obs;
  var phi = 3.14;

// luas Segitiga
  RxDouble LuasSegitiga = 0.0.obs;

  // luas Trapesium
  double LuasTrapesium = 1.0;

  // FUNCTION HITUNG LUAS LINGKARAN
  void HitungLuasLingkaran(double jarijari) {
    LuasLingkaran.value = phi * jarijari * jarijari;
  }

  // FUNCTION HITUNG LUAS SEGITIGA
  void HitungLuasSegitiga(double alas, double tinggi) {
    LuasSegitiga.value = alas * tinggi / 0.5;
    update();
  }

  // FUNCTION HITUNG LUAS SEGITIGA
  void HitungLuasTapesium(double tinggiT, double alasA, double alasB) {
    LuasTrapesium = (tinggiT * (alasA + alasB) * 0.5);
    update();

    // Apabila tidak obs tidak perlu memakai value
    // dan pada halaman home gunakan :

    // GetBuilder<MethodRumusController>(
    //           init: MethodRumusController(),
    //           initState: (_) {},
    //           builder: (_) {
    //             return Text(rController.LuasTrapesium.toString());
    //           }),
  }
}
