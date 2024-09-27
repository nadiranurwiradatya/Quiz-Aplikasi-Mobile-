import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://instagram.fsub8-2.fna.fbcdn.net/v/t51.2885-19/448384988_1424943722235116_5254179882990497805_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fsub8-2.fna.fbcdn.net&_nc_cat=108&_nc_ohc=vrI7zuNQKsUQ7kNvgHgo9_q&_nc_gid=a039ef248a214ca78801f4d6c4d8cb3d&edm=APs17CUBAAAA&ccb=7-5&oh=00_AYD1qEPDiEfeXD6psCXrcGOcOSR-2Ufzono_QlZx7ZA7dg&oe=66FC7A25&_nc_sid=10d13b'),
              ),
              SizedBox(height: 20),
              Text(
                'Nama: Nadira Nur Wiradatya',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('NIM: 124210068'),
              SizedBox(height: 10),
              Text('Tempat, Tanggal Lahir: Pacitan, 6 April 2003'),
              SizedBox(height: 10),
              Text('Hobi: Design Creative'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Kembali ke halaman sebelumnya
                },
                child: Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
