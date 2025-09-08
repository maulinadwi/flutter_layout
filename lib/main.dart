import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter layout: maulina dwi dan 362458302140',
      home: MyHomePage(), 
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ranu Kumbolo'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Bagian Gambar
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/RanuKumbolo.jpeg', // Ganti dengan nama file gambar Anda
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                ),
                
                // Bagian Judul dan Rating
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Ranu Kumbolo',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Lumajang jawa timur, Indonesia',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.star, color: Colors.red),
                      const Text('41', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
                
                // Bagian Tombol
             Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      _buildButtonColumn(Icons.call, 'CALL'),
      _buildButtonColumn(Icons.near_me, 'ROUTE'),
      _buildButtonColumn(Icons.share, 'SHARE'),
    ],
  ),
),
                
                // Bagian Deskripsi
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Text(
                    'Ranu Kumbolo is a natural lake located in East Java, Indonesia, specifically in the Bromo Tengger Semeru National Park, on the border between Malang and Lumajang Regencies. This lake is renowned for its stunning natural phenomenon, the sky mirror, which can be fully appreciated at dawn or dusk and is considered one of the most captivating natural sights in the world. This phenomenon occurs due to the reflection of the clear lake water against the sky, creating a mesmerizing array of colors.',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget pembantu untuk membuat tombol dengan ikon dan teks
Widget _buildButtonColumn(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: Colors.blue),
      const SizedBox(height: 8),
      Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.blue,
        ),
      ),
    ],
  );
}