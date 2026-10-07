import 'package:belajarflutter/models/product_model.dart';
import 'package:get/get.dart';

class ListProductController extends GetxController {

 List<ProductModel> listProduct = [
  ProductModel(
      namaProduk: "Paracetamol",
      harga: "Rp 4.500",
      deskripsi: "Obat demam sama sakit kepala. Isi 10 tablet per strip.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbTL17cMBEcHdCg_DQRfYJ42XeL-u-3sahXdVZKDGfQg&s=10",
      rating: "4.6",
      namaToko: "Apotek Kimia Farma",
      review: "Harganya murah, stok hampir selalu ada.",
    ),
    ProductModel(
      namaProduk: "Blackmores Vitamin C",
      harga: "Rp 80.000",
      deskripsi: "Suplemen vitamin C buat jaga daya tahan tubuh. Isi 30 tablet.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNHypSPFM32DrVyPvHS30XKL7YKpeOjKiYb2Qf6LLosg&s=10",
      rating: "4.3",
      namaToko: "Apotek K24",
      review: "Lumayan, tapi rasanya agak asam kalau dikunyah.",
    ),
    ProductModel(
      namaProduk: "Betadine",
      harga: "Rp 17.800",
      deskripsi: "Cairan antiseptik buat luka luar biar nggak infeksi.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR45V9g-M8JQW4j19XuNlAywNelstZRk4a71qsoZhxLrw&s=10",
      rating: "4.8",
      namaToko: "Apotek Kimia Farma",
      review: "Wajib ada di rumah, dipakai buat luka kecil.",
    ),
    ProductModel(
      namaProduk: "Masker Medis",
      harga: "Rp 24.000",
      deskripsi: "Masker sekali pakai, isi 50 pcs. Cocok buat harian.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD_xE2xSvaCurnY4dyLU6aD6DZQtjLOgCQ-JuqmRlaLw&s=10",
      rating: "3.9",
      namaToko: "Apotek K24",
      review: "Oke buat harian, tapi tali telinganya kurang kuat.",
    ),
    ProductModel(
      namaProduk: "Termometer Digital",
      harga: "Rp 32.500",
      deskripsi: "Alat ukur suhu badan, hasilnya keluar sekitar 10 detik.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgrR5t8j1P2-R_LzD-sgCg4MrpaWauvwWrlsi-AF-64Q&s=10",
      rating: "4.1",
      namaToko: "Apotek Sehat",
      review: "Cukup akurat, cuma baterainya cepat habis.",
    ),
    ProductModel(
      namaProduk: "Hansaplast",
      harga: "Rp 9.500",
      deskripsi: "Plester buat luka kecil. Isi 10 lembar per box.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV7HYgS3YytUIqfv_kTt70jWFNAg51Qw5jZFUw_EgkrQ&s=10",
      rating: "4.4",
      namaToko: "Apotek Sehat",
      review: "Praktis, tapi kadang lepas kalau kena air.",
    ),
        ProductModel(
      namaProduk: "Minyak Kayu Putih",
      harga: "Rp 14.500",
      deskripsi: "Minyak buat hangatin badan, perut kembung, sama gigitan nyamuk.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP3EnaZUCegi19oROrVnUwlXpXNAjSwTEQGTwH9dbEgA&s",
      rating: "4.7",
      namaToko: "Apotek Kimia Farma",
      review: "Wangi dan hangat, dipakai satu keluarga.",
    ),
    ProductModel(
      namaProduk: "Combi Anak",
      harga: "Rp 21.000",
      deskripsi: "Jamu cair buat masuk angin. Isi 1 sachet 15 ml.",
      gambar: "https://images.alodokter.com/dk0z4ums3/image/upload/c_scale,h_500,w_500/v1/production/pharmacy/products/1753775819_ob_combi_anak",
      rating: "4.0",
      namaToko: "Apotek K24",
      review: "Lumayan enak badan setelah minum, rasanya agak pahit.",
    ),
  ];
}