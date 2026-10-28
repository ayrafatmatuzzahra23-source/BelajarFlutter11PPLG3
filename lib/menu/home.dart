import 'package:belajarflutter/controller/list_product_controller.dart';
import 'package:belajarflutter/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 230,
          margin: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: Obx(
            () => ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.listProduct.length,
              itemBuilder: (context, index) {
                final product = controller.listProduct[index];
                return SizedBox(
                  width: 160,
                  child: Card(
                    elevation: 0,
                    color: Colors.white,
                    surfaceTintColor: Colors.transparent,
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.grey.shade300),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Area gambar: tinggi tetap
                          SizedBox(
                            width: double.infinity,
                            height: 120,
                            child: Image.network(
                              product.gambar,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(
                                  Icons.medication,
                                  color: Colors.grey,
                                  size: 60,
                                );
                              },
                            ),
                          ),
                          // Area nama: tinggi tetap, muat 2 baris
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                            child: SizedBox(
                              height: 38,
                              child: Text(
                                product.namaProduk,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          // Harga selalu di posisi yang sama
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 4, 10, 0),
                            child: Text(
                              product.harga,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ],
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