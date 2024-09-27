import 'package:flutter/material.dart';
import '../widgets/input_field.dart';

class LayangLayangPage extends StatefulWidget {
  @override
  _LayangLayangPageState createState() => _LayangLayangPageState();
}

class _LayangLayangPageState extends State<LayangLayangPage> {
  double diagonal1 = 0, diagonal2 = 0, sisi1 = 0, sisi2 = 0;
  double luas = 0, keliling = 0;

  void hitungLuas() {
    setState(() {
      luas = 0.5 * diagonal1 * diagonal2;
    });
  }

  void hitungKeliling() {
    setState(() {
      keliling = 2 * (sisi1 + sisi2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layang-layang')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            InputField(
              label: 'Diagonal 1',
              onChanged: (value) {
                diagonal1 = double.parse(value);
              },
            ),
            InputField(
              label: 'Diagonal 2',
              onChanged: (value) {
                diagonal2 = double.parse(value);
              },
            ),
            InputField(
              label: 'Sisi 1',
              onChanged: (value) {
                sisi1 = double.parse(value);
              },
            ),
            InputField(
              label: 'Sisi 2',
              onChanged: (value) {
                sisi2 = double.parse(value);
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
