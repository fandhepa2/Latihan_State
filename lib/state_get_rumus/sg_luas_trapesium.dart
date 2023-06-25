import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:latihan_state/controllers/method_rumus_controller.dart';

class StateGetLuasTrapesium extends StatelessWidget {
  const StateGetLuasTrapesium({super.key});

  @override
  Widget build(BuildContext context) {
    print('REBUILD');
    final rController = Get.put(MethodRumusController());
    return Scaffold(
      appBar: AppBar(
        title: Text("State Get Luas Trapesium"),
      ),
      body: ListView(
        children: [
          Text("nilai default : 0.5"),
          TextFormField(
            controller: rController.inputalasA,
          ),
          TextFormField(
            controller: rController.inputalasB,
          ),
          TextFormField(
            controller: rController.inputinggiT,
          ),

          GetBuilder<MethodRumusController>(
              init: MethodRumusController(),
              initState: (_) {},
              builder: (_) {
                return Text(rController.LuasTrapesium.toString());
              }),
          // Obx(() => Text("Hasil : " + rController.LuasTrapesium.toString())),
          ElevatedButton(
              onPressed: () {
                rController.HitungLuasTapesium(
                    double.parse(rController.inputalasA.text),
                    double.parse(rController.inputalasB.text),
                    double.parse(rController.inputinggiT.text));
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
