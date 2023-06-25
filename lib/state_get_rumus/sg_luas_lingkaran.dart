import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:latihan_state/controllers/method_rumus_controller.dart';
// import 'package:latihan_state/controllers/method_controler.dart';

class StateGetLuasLingkaran extends StatelessWidget {
  const StateGetLuasLingkaran({super.key});

  @override
  Widget build(BuildContext context) {
    print('REBUILD');
    final rController = Get.put(MethodRumusController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Set Get Luas Lingkaran"),
      ),
      body: ListView(
        children: [
          Text("nilai phi  :" + rController.phi.toString()),
          TextFormField(
            controller: rController.inputJariJari,
          ),
          Obx(() => Text("Hasil : " + rController.LuasLingkaran.string)),
          ElevatedButton(
              onPressed: () {
                rController.HitungLuasLingkaran(
                    double.parse(rController.inputJariJari.text));
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
