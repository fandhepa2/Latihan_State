import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.nameInput});

  final String nameInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [Text(" Hi......$nameInput, Selamat Datang! ")],
        ),
      ),
    );
  }
}
