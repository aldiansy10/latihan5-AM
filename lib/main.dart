import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    ),
  );
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String userName = 'Jus Kaur';
    final String role = 'Jus Buah Segar dan Nikmat Setiap Hari';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.local_drink,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  role,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Statistik usaha Jus Kaur
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                StatItem(
                  jumlah: '15',
                  judul: 'Menu Jus',
                ),
                StatItem(
                  jumlah: '1.2K',
                  judul: 'Pelanggan',
                ),
                StatItem(
                  jumlah: '42',
                  judul: 'Terjual',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String jumlah;
  final String judul;

  const StatItem({
    super.key,
    required this.jumlah,
    required this.judul,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          jumlah,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          judul,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
