import 'package:belajarflutter/controller/list_product_controller.dart';
import 'package:belajarflutter/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({super.key});

  final controller = Get.put(ListProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Products",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listProduct.length,
          itemBuilder: (context, index) {
            final product = controller.listProduct[index];
            return Card(
              elevation: 3,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    product.gambar,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.medication, color: Colors.grey, size: 60);
                      },
                  ),
                ),
                title: Text(
                  product.namaProduk,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Text(product.harga, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.teal)),
                ),
                trailing: Icon(Icons.arrow_forward),
                onTap: () => Get.toNamed(
                  Routes.detailProduct,
                  arguments: {
                    'namaProduk': product.namaProduk,
                    'harga': product.harga,
                    'deskripsi': product.deskripsi,
                    'gambar': product.gambar,
                    'rating': product.rating,
                    'namaToko': product.namaToko,
                    'review': product.review,
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
