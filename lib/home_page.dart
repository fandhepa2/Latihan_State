import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:latihan_state/bangun_datar/segitiga_page.dart';
import 'package:latihan_state/bangun_datar/state_get_page.dart';
import 'package:latihan_state/bangun_datar/trapesium_page.dart';
import 'package:latihan_state/input_page.dart';
import 'package:latihan_state/bangun_datar/lingkaran_page.dart';
import 'package:latihan_state/bangun_datar/persegi_page.dart';

import 'package:latihan_state/state_get_rumus/sg_luas_lingkaran.dart';

import 'package:latihan_state/state_get_rumus/sg_luas_segitiga.dart';
import 'package:latihan_state/state_get_rumus/sg_luas_trapesium.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(InputPage());
                // UBAH MATERIAL APP DI MAIN DART MENJASDI GET
              },
              child: MenuWidget(
                color: Colors.amber,
                title: "Send Data Page",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.to(PersegiPage());
              },
              child: MenuWidget(title: "Hitung L Persegi", color: Colors.green),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(LingkaranPage());
                },
                child: MenuWidget(
                    title: "Hitung L Lingkaran", color: Colors.indigo)),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(SegitigaPage());
                },
                child: MenuWidget(
                    title: "Hitung L Segitiga", color: Colors.redAccent)),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(TrapesiumPage());
                },
                child: MenuWidget(
                    title: "Hitung L Trapesium", color: Colors.blueGrey)),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(StateGetPage());
                },
                child: MenuWidget(
                    title: "State Management Gets", color: Colors.yellow)),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(StateGetLuasLingkaran());
                },
                child: MenuWidget(
                    title: "SM Gets Luas Lingkaran", color: Colors.lightBlue)),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(StateGetLuasSegitiga());
                },
                child: MenuWidget(
                    title: "SM Gets Luas Segitiga", color: Colors.grey)),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(StateGetLuasTrapesium());
                },
                child: MenuWidget(
                    title: "SM Gets Luas Trapesium", color: Colors.green)),
          ],
        ),
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
