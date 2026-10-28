import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.teal.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Emma Watson',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                Text('Perempuan | 25 Tahun'),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Tinggi\n160 cm', textAlign: TextAlign.center),
                    Text('Berat\n55 kg', textAlign: TextAlign.center),
                    Text('BMI\n21.5', textAlign: TextAlign.center),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Asuransi',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.health_and_safety, color: Colors.teal),
              title: const Text('Sambungkan Asuransimu'),
              subtitle: const Text('Dapatkan manfaat asuransi untuk layanan'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Tingkatkan Kesehatanmu',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.calendar_month, color: Colors.teal),
              title: const Text('Kalender Menstruasi'),
              subtitle: const Text('Lacak siklus menstruasi dengan mudah'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.pregnant_woman, color: Colors.teal),
              title: const Text('Kalender Kehamilan'),
              subtitle: const Text('Pantau tumbuh kembang janin'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.access_time, color: Colors.teal),
              title: const Text('Pengingat Obat'),
              subtitle: const Text('Pengingat untuk minum obat tepat waktu'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.monitor_weight, color: Colors.teal),
              title: const Text('Kalkulator BMI'),
              subtitle: const Text('Cara mudah mengetahui BMI'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.psychology, color: Colors.teal),
              title: const Text('Kesehatan Mental'),
              subtitle: const Text('Dapatkan pertolongan dari ahlinya'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}