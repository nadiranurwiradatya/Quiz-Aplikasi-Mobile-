import 'package:flutter/material.dart';
import 'dart:math';
import '../widgets/input_field.dart';

class BilanganPrimaPage extends StatefulWidget {
  @override
  _BilanganPrimaPageState createState() => _BilanganPrimaPageState();
}

class _BilanganPrimaPageState extends State<BilanganPrimaPage> {
  int batas = 0;
  List<int> bilPrima = [];

  bool isPrima(int angka) {
    if (angka <= 1) return false;
    for (int i = 2; i <= sqrt(angka); i++) {
      if (angka % i == 0) return false;
    }
    return true;
  }

  void cariBilanganPrima() {
    setState(() {
      bilPrima.clear();
      for (int i = 2; i <= batas; i++) {
        if (isPrima(i)) bilPrima.add(i);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bilangan Prima')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            InputField(
              label: 'Batas Atas',
              onChanged: (value) {
                batas = int.parse(value);
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Cari Bilangan Prima'),
              onPressed: cariBilanganPrima,
            ),
            SizedBox(height: 20),
            Text('Bilangan Prima:'),
            Expanded(
              child: ListView.builder(
                itemCount: bilPrima.length,
                itemBuilder: (context, index) {
                  return Text(bilPrima[index].toString());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
