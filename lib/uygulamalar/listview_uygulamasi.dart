import 'package:flutter/material.dart';

// Liste öğelerini temsil eden model sınıfı
class ListeOgesi {
  final String baslik;
  final String altBaslik;
  final IconData ikon;
  final Color renk;

  ListeOgesi({
    required this.baslik,
    required this.altBaslik,
    required this.ikon,
    required this.renk,
  });
}

class ListViewUygulamasi extends StatelessWidget {
  ListViewUygulamasi({super.key});

  // Örnek veri listesi
  final List<ListeOgesi> veriler = [
    ListeOgesi(
      baslik: 'Fotoğraflar',
      altBaslik: '235 öğe',
      ikon: Icons.photo_library,
      renk: Colors.blue,
    ),
    ListeOgesi(
      baslik: 'Müzikler',
      altBaslik: '180 parça',
      ikon: Icons.music_note,
      renk: Colors.purple,
    ),
    ListeOgesi(
      baslik: 'Videolar',
      altBaslik: '50 video',
      ikon: Icons.video_collection,
      renk: Colors.red,
    ),
    ListeOgesi(
      baslik: 'Belgeler',
      altBaslik: '120 dosya',
      ikon: Icons.description,
      renk: Colors.orange,
    ),
    ListeOgesi(
      baslik: 'İndirilenler',
      altBaslik: '80 öğe',
      ikon: Icons.download,
      renk: Colors.green,
    ),
    // Listeyi uzatmak için aynı öğeleri tekrar ekliyoruz
    ListeOgesi(
      baslik: 'Favoriler',
      altBaslik: '45 öğe',
      ikon: Icons.favorite,
      renk: Colors.pink,
    ),
    // ... daha fazla öğe eklenebilir
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder Örnekleri'),
        backgroundColor: Colors.teal,
      ),
      // Farklı liste tiplerini göstermek için TabBarView kullanıyoruz
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            // Tab bar için butonlar
            const TabBar(
              tabs: [
                Tab(text: 'Temel Liste'),
                Tab(text: 'Kartlı Liste'),
                Tab(text: 'Ayırıcılı Liste'),
              ],
            ),
            // Tab içerikleri
            Expanded(
              child: TabBarView(
                children: [
                  _temelListe(),
                  _kartliListe(),
                  _ayriciliListe(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ÖRNEK 1: Temel ListView.builder
  Widget _temelListe() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: veriler.length,
      itemBuilder: (context, index) {
        final veri = veriler[index];
        // Temel ListTile widget'ı
        return ListTile(
          leading: Icon(
            veri.ikon,
            color: veri.renk,
            size: 32,
          ),
          title: Text(veri.baslik),
          subtitle: Text(veri.altBaslik),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            // Tıklama işlemi
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${veri.baslik} seçildi')),
            );
          },
        );
      },
    );
  }

  // ÖRNEK 2: Kartlı ListView.builder
  Widget _kartliListe() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: veriler.length,
      itemBuilder: (context, index) {
        final veri = veriler[index];
        // Card içinde özelleştirilmiş tasarım
        return Card(
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: veri.renk.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      veri.ikon,
                      color: veri.renk,
                      size: 32,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          veri.baslik,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          veri.altBaslik,
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // ÖRNEK 3: Ayırıcılı ListView.builder
  Widget _ayriciliListe() {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: veriler.length,
      // Öğeler arası ayırıcı
      separatorBuilder: (context, index) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final veri = veriler[index];
        // Özelleştirilmiş liste öğesi
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: veri.renk,
                child: Icon(
                  veri.ikon,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      veri.baslik,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      veri.altBaslik,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
