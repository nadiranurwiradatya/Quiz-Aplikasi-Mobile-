import 'package:flutter/material.dart';
import '../widgets/input_field.dart';

class TrapesiumPage extends StatefulWidget {
  @override
  _TrapesiumPageState createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  double sisiAtas = 0, sisiBawah = 0, tinggi = 0, sisiMiring = 0;
  double luas = 0, keliling = 0;

  void hitungLuas() {
    setState(() {
      luas = 0.5 * (sisiAtas + sisiBawah) * tinggi;
    });
  }

  void hitungKeliling() {
    setState(() {
      keliling = sisiAtas + sisiBawah + (2 * sisiMiring);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trapesium')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            InputField(
              label: 'Sisi Atas',
              onChanged: (value) {
                sisiAtas = double.parse(value);
              },
            ),
            InputField(
              label: 'Sisi Bawah',
              onChanged: (value) {
                sisiBawah = double.parse(value);
              },
            ),
            InputField(
              label: 'Tinggi',
              onChanged: (value) {
                tinggi = double.parse(value);
              },
            ),
            InputField(
              label: 'Sisi Miring',
              onChanged: (value) {
                sisiMiring = double.parse(value);
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
