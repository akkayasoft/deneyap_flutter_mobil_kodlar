import 'package:flutter/material.dart';

class ExpandedUygulamasi extends StatelessWidget {
  const ExpandedUygulamasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Örnekleri'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          // Örnek 1: Eşit bölünmüş alanlar
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Eşit Bölünmüş Alanlar',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      'Expanded 1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Expanded 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'Expanded 3',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
