import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Bangun Datar',
      theme: ThemeData(
        primarySwatch: Colors.red, // Mengatur primary color menjadi merah
        scaffoldBackgroundColor:
            Colors.black, // Mengatur latar belakang menjadi hitam
        colorScheme: ColorScheme(
          primary: Colors.red, // Mengatur warna utama
          secondary: Colors.redAccent, // Mengatur warna sekunder
          surface: Colors.black, // Warna permukaan
          background: Colors.black, // Warna latar belakang
          error: Colors.redAccent, // Warna untuk error
          onPrimary: Colors.white, // Warna teks di atas warna utama
          onSecondary: Colors.white, // Warna teks di atas warna sekunder
          onSurface: Colors.white, // Warna teks di atas warna permukaan
          onBackground: Colors.white, // Warna teks di atas latar belakang
          onError: Colors.black, // Warna teks di atas warna error
          brightness: Brightness.dark, // Menentukan tema gelap
        ),
        fontFamily: 'Poppins', // Mengatur font default ke Poppins
        textTheme: TextTheme(
          bodyText1: TextStyle(
              color: Colors.white), // Mengatur warna teks menjadi putih
          bodyText2: TextStyle(
              color: Colors.white), // Mengatur warna teks menjadi putih
        ),
      ),
      home: HomePage(),
    );
  }
}
