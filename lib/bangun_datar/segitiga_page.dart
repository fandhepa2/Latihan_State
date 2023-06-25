import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SegitigaPage extends StatefulWidget {
  const SegitigaPage({super.key});

  @override
  State<SegitigaPage> createState() => _SegitigaPageState();
}

class _SegitigaPageState extends State<SegitigaPage> {
  TextEditingController AlasInput = TextEditingController();
  TextEditingController TinggiInput = TextEditingController();
  double LuasSegitiga = 0;

  // Function
  void HitungLuasSegitiga() {
    if (AlasInput.text.isEmpty || TinggiInput.text.isEmpty) {
    } else
      setState(() {
        LuasSegitiga =
            double.parse(AlasInput.text) * double.parse(TinggiInput.text) / 0.5;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hitung Luas Segitiga"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(" Input Nilai Alas"),
            TextFormField(
              controller: AlasInput,
              // controller: PanjangInput,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Input Nilai Tinggi"),
            TextFormField(
              controller: TinggiInput,
              // controller: LebarInput,
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                HitungLuasSegitiga();
              },
              child: Text("Hitung"),
            ),
            Text("Hasil : ${LuasSegitiga} "),
          ],
        ),
      ),
    );
  }
}
