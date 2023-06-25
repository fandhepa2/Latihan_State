import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_state/result_page.dart';

class InputPage extends StatelessWidget {
  InputPage({super.key});

  TextEditingController nameInput = TextEditingController();
  // APABILA ADA PENAMBAHAN VARIABEL TIDAK PERLU MENGGUNAKAN CONST

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text("Input Your Name"),
            TextFormField(
              controller: nameInput,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(ResultPage(nameInput: nameInput.text));
              },
              child: Text(" Submit"),
            )
          ],
        ),
      ),
    );
  }
}
