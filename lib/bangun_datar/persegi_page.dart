import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatefulWidget {
  const PersegiPage({super.key});

  @override
  State<PersegiPage> createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  // variabel
  TextEditingController PanjangInput = TextEditingController();
  TextEditingController LebarInput = TextEditingController();
  int Luas = 0;

  bool isLoading = false;

  // function
  void HitungLuas() {
    if (PanjangInput.text.isEmpty || LebarInput.text.isEmpty) {
      Get.snackbar("Error", "Nilai Hasil Panjang dan Lebar Harus Diisi!");
    } else
      //  setState untuk mereFresh Halaman
      setState(() {
        //  ubah status loading menjadi True
        isLoading = true;
        // mengisikan variabel luas yang tadinya 0 menjadi hasil dari
        // panjang x lebar
        Luas = int.parse(PanjangInput.text) * int.parse(LebarInput.text);
        isLoading = false;
        // " int.parse(variabel.text)"  untuk mengubah type data text ke number/integer sehingga nilai di atas dapat di hitung
      });
  }

  @override
  Widget build(BuildContext context) {
    print("BUILDED..");
    return Scaffold(
      appBar: AppBar(
        title: Text("Hitung Luas Persegi Panjang"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(" Input Nilai Panjang"),
            TextFormField(
              controller: PanjangInput,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Input Nilai Lebar"),
            TextFormField(
              controller: LebarInput,
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                HitungLuas();
              },
              child: isLoading == false
                  ? Text("Hitung")
                  : CircularProgressIndicator(
                      color: Colors.white,
                    ),
            ),
            Text("Hasil : ${Luas}"),
          ],
        ),
      ),
    );
  }
}
