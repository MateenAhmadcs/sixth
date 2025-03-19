import 'package:flutter/material.dart';

class Clothing extends StatefulWidget {
  const Clothing({super.key});

  @override
  State<Clothing> createState() => _ClothingState();
}

class _ClothingState extends State<Clothing> {
  final List<Image> clothes = [
    Image(image: AssetImage('assets/aes.jpg')),
    Image(image: AssetImage('assets/bel.jpg')),
    Image(image: AssetImage('assets/blue.jpg')),
    Image(image: AssetImage('assets/glitter.jpg')),
    Image(image: AssetImage('assets/green.jpg')),
    Image(image: AssetImage('assets/polka.jpg')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'All categories of clothing are available here',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: clothes.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: clothes[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
