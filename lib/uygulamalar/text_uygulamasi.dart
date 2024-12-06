import 'package:flutter/material.dart';

class TextUygulamasi extends StatelessWidget {
  const TextUygulamasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget Örnekleri'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Temel Text Özellikleri
            _baslikOlustur('1. Temel Text Özellikleri'),
            const Text(
              'Normal Text',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'Kalın Text',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'İtalik Text',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 20),

            // 2. Text Renklendirme
            _baslikOlustur('2. Text Renklendirme'),
            const Text(
              'Renkli Text',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
            Text(
              'Gradient Text',
              style: TextStyle(
                fontSize: 20,
                foreground: Paint()
                  ..shader = const LinearGradient(
                    colors: [Colors.blue, Colors.red],
                  ).createShader(
                    const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                  ),
              ),
            ),
            const SizedBox(height: 20),

            // 3. Text Dekorasyon
            _baslikOlustur('3. Text Dekorasyon'),
            const Text(
              'Altı Çizili Text',
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            const Text(
              'Üstü Çizili Text',
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const Text(
              'Gölgeli Text',
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
                shadows: [
                  Shadow(
                    color: Colors.black26,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // 4. Text Hizalama
            _baslikOlustur('4. Text Hizalama'),
            Container(
              width: double.infinity,
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(8),
              child: const Column(
                children: [
                  Text(
                    'Sola Hizalı Text',
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Ortaya Hizalı Text',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Sağa Hizalı Text',
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // 5. Çok Satırlı Text
            _baslikOlustur('5. Çok Satırlı Text'),
            const Text(
              'Bu bir çok satırlı text örneğidir. Text widget\'ı otomatik olarak satır sonlarını ayarlar ve metni uygun şekilde böler.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'Bu text maksimum 2 satır gösterilecek şekilde ayarlanmıştır. Fazlası ... ile gösterilir. Lorem ipsum dolor sit amet.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // 6. Rich Text
            _baslikOlustur('6. Rich Text (Farklı Stiller)'),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                children: [
                  const TextSpan(
                    text: 'Bu bir ',
                  ),
                  TextSpan(
                    text: 'renkli',
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: ' ve ',
                  ),
                  const TextSpan(
                    text: 'stillendirilmiş',
                    style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const TextSpan(
                    text: ' text örneğidir.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // 7. SelectableText
            _baslikOlustur('7. Seçilebilir Text'),
            const SelectableText(
              'Bu text seçilebilir ve kopyalanabilir. Deneyebilirsiniz!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _baslikOlustur(String baslik) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        baslik,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.teal,
        ),
      ),
    );
  }
}
