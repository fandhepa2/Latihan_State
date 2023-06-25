import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:latihan_state/controllers/method_rumus_controller.dart';

class StateGetLuasSegitiga extends StatelessWidget {
  const StateGetLuasSegitiga({super.key});

  @override
  Widget build(BuildContext context) {
    print('REBUILD');
    final rController = Get.put(MethodRumusController());
    return Scaffold(
      appBar: AppBar(
        title: Text("State Get Luas Segitiga"),
      ),
      body: ListView(
        children: [
          Text("nilai default : 0.5"),
          TextFormField(
            controller: rController.inputalas,
          ),
          TextFormField(
            controller: rController.inputtinggi,
          ),
          Obx(() => Text("Hasil : " + rController.LuasSegitiga.string)),
          ElevatedButton(
              onPressed: () {
                rController.HitungLuasSegitiga(
                    double.parse(rController.inputalas.text),
                    double.parse(rController.inputtinggi.text));
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
