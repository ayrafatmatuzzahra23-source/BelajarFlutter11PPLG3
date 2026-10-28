import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
  const MenuDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Aplikasi Kesehatan',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header dengan tema Teal
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 40, color: Colors.teal),
              ),
              accountName: Text(
                'Nama Pengguna',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              accountEmail: Text(
                'pengguna@email.com',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            // Menu Items yang langsung terhubung ke GetX Routes
            ListTile(
              leading: const Icon(Icons.person_outline, color: Colors.teal),
              title: const Text('Profil Saya'),
              onTap: () {
                Navigator.pop(context); // Tutup drawer dulu
                Get.toNamed('/profile'); // Panggil rute profil yang sudah dibuat
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_bag_outlined, color: Colors.teal),
              title: const Text('List Produk'),
              onTap: () {
                Navigator.pop(context);
                Get.toNamed('/listProduct'); // Panggil rute produk
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.redAccent),
              title: const Text('Keluar', style: TextStyle(color: Colors.redAccent)),
              onTap: () {
                Navigator.pop(context);
                // Aksi keluar atau kembali ke halaman login/registration
                Get.offAllNamed('/registration'); 
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Geser layar dari kiri atau ketuk ikon menu\nuntuk membuka Menu Drawer',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ),
    );
  }
}