import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LingkaranPage extends StatefulWidget {
  const LingkaranPage({super.key});

  @override
  State<LingkaranPage> createState() => _LingkaranPageState();
}

class _LingkaranPageState extends State<LingkaranPage> {
  TextEditingController JariJariInput = TextEditingController();

  double LuasLingkaran = 0;

  // function
  void HitungLuasLingkaran() {
    if (JariJariInput.text.isEmpty) {
    } else
      setState(() {
        LuasLingkaran = 3.14 *
            double.parse(JariJariInput.text) *
            double.parse(JariJariInput.text);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hitung Luas Lingkaran"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        // const merupakan nilai yang tidak dapat di ubah ubah
        child: ListView(
          children: [
            Text(" Input Nilai Jari - Jari"),
            TextFormField(
              controller: JariJariInput,
              // controller: PanjangInput,
              // keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                HitungLuasLingkaran();
              },
              child: Text("Hitung"),
            ),
            Text("Hasil : ${LuasLingkaran}"),
          ],
        ),
      ),
    );
  }
}
