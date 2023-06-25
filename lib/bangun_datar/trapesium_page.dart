import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({super.key});

  @override
  State<TrapesiumPage> createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  TextEditingController AlasAInput = TextEditingController();
  TextEditingController AlasBInput = TextEditingController();
  TextEditingController TinggiInput = TextEditingController();
  double LuasTrapesium = 0;

  // Function

  void HitungLuasTrapesium() {
    if (AlasAInput.text.isNotEmpty ||
        AlasBInput.text.isNotEmpty ||
        TinggiInput.text.isNotEmpty) {
      setState(() {
        LuasTrapesium =
            (double.parse(AlasAInput.text) + double.parse(AlasBInput.text)) *
                double.parse(TinggiInput.text) *
                0.5;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hitung Luas Trapesium"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(" Input Nilai Alas A"),
            TextFormField(
              controller: AlasAInput,
              // controller: PanjangInput,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Input Nilai Alas B"),
            TextFormField(
              controller: AlasBInput,
              // controller: LebarInput,
              keyboardType: TextInputType.number,
            ),
            Text(" Input Nilai Tinggi"),
            TextFormField(
              controller: TinggiInput,
              // controller: PanjangInput,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                HitungLuasTrapesium();
              },
              child: Text("Hitung"),
            ),
            Text("Hasil :  ${LuasTrapesium}"),
          ],
        ),
      ),
    );
  }
}
