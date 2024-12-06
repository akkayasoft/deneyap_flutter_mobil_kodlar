import 'package:flutter/material.dart';

class IkonlarUygulamasi extends StatelessWidget {
  IkonlarUygulamasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İkonlar Uygulaması'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 12,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _ikonlarListesi[index],
                  size: 40,
                  color: Colors.blue,
                ),
                const SizedBox(height: 8),
                Text(_ikonIsimleri[index]),
              ],
            ),
          );
        },
      ),
    );
  }

  // Gösterilecek ikonlar��n listesi
  final List<IconData> _ikonlarListesi = [
    Icons.home,
    Icons.favorite,
    Icons.settings,
    Icons.person,
    Icons.email,
    Icons.phone,
    Icons.camera,
    Icons.music_note,
    Icons.star,
    Icons.search,
    Icons.alarm,
    Icons.map,
  ];

  // İkon isimlerinin listesi
  final List<String> _ikonIsimleri = [
    'Ev',
    'Favori',
    'Ayarlar',
    'Kişi',
    'E-posta',
    'Telefon',
    'Kamera',
    'Müzik',
    'Yıldız',
    'Arama',
    'Alarm',
    'Harita',
  ];
}
