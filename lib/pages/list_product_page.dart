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
        margin: const EdgeInsets.all(10),
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
            controller.resetProduct();
          },
          child: Obx(
            () => ListView.builder(
              itemCount: controller.listProduct.length,
              itemBuilder: (context, index) {
                final product = controller.listProduct[index];
                return Dismissible(
                  key: ValueKey(product.namaProduk),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    controller.listProduct.removeAt(index);
                  },
                  background: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red),
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(
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
                      );
                    },
                    onLongPress: () {
                      Get.bottomSheet(
                        Container(
                          color: Colors.white,
                          child: ListTile(
                            leading:
                                const Icon(Icons.delete, color: Colors.red),
                            title: const Text("Hapus"),
                            onTap: () {
                              controller.listProduct.removeAt(index);
                              Get.back();
                            },
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 14),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            product.gambar,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.medication,
                                color: Colors.grey,
                                size: 60,
                              );
                            },
                          ),
                        ),
                        title: Text(
                          product.namaProduk,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            product.harga,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}