import 'package:flutter/material.dart';
import 'dart:math';
import '../widgets/input_field.dart';

class LingkaranPage extends StatefulWidget {
  @override
  _LingkaranPageState createState() => _LingkaranPageState();
}

class _LingkaranPageState extends State<LingkaranPage> {
  double jariJari = 0;
  double luas = 0, keliling = 0;

  void hitungLuas() {
    setState(() {
      luas = pi * jariJari * jariJari;
    });
  }

  void hitungKeliling() {
    setState(() {
      keliling = 2 * pi * jariJari;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lingkaran')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            InputField(
              label: 'Jari-jari',
              onChanged: (value) {
                jariJari = double.parse(value);
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Hitung Luas'),
                  onPressed: hitungLuas,
                ),
                ElevatedButton(
                  child: Text('Hitung Keliling'),
                  onPressed: hitungKeliling,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Luas: $luas'),
            Text('Keliling: $keliling'),
          ],
        ),
      ),
    );
  }
}
