import 'package:flutter/material.dart';

class ResimIslemleri extends StatelessWidget {
  const ResimIslemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Resim İşlemleri',
            style: TextStyle(
              fontSize: 40,
              backgroundColor: Colors.pink,
            ),
          ),
        ),
        body: Image.asset('assets/images/flamingo.jpg'));
  }
}

/*
Image.network(
fit: BoxFit.cover,
width: MediaQuery.of(context).size.width * 0.9,
height: MediaQuery.of(context).size.height * 0.9,
'https://images.pexels.com/photos/40984/animal-ara-macao-beak-bird-40984.jpeg?cs=srgb&dl=pexels-public-domain-pictures-40984.jpg&fm=jpg'
),*/
