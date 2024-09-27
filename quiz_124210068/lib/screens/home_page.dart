import 'package:flutter/material.dart';
import 'layang_layang_page.dart';
import 'trapesium_page.dart';
import 'lingkaran_page.dart';
import 'bilangan_prima_page.dart';
import 'profil_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MainMenuPage(),
    ProfilPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Menampilkan halaman yang dipilih
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Menu Utama',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Halaman utama yang berisi menu
class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        children: <Widget>[
          _buildMenuCard(context, 'Layang-layang', LayangLayangPage()),
          _buildMenuCard(context, 'Trapesium', TrapesiumPage()),
          _buildMenuCard(context, 'Lingkaran', LingkaranPage()),
          _buildMenuCard(context, 'Bilangan Prima', BilanganPrimaPage()),
        ],
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, Widget page) {
    return Card(
      color: const Color.fromARGB(255, 34, 34, 34),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
