import 'package:belajarflutter/controller/detail_produk_controlller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DetailProductPage extends StatelessWidget {
  DetailProductPage({super.key});

  final controller = Get.put(DetailProdukController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Produk", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              controller.gambar,
              width: double.infinity,
              height: 250,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.harga,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    controller.namaProduk,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      SizedBox(width: 4),
                      Text(controller.rating),
                      SizedBox(width: 20),
                      Icon(Icons.store, color: Colors.grey, size: 20),
                      SizedBox(width: 4),
                      Text(controller.namaToko, style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Divider(height: 32),
                  Text(
                    "Deskripsi",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(controller.deskripsi),
                      ),
                    ),
                  ),
                  Text(
                    "Review",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(controller.review),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}