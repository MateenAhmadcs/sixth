import 'package:flutter/material.dart';

class Accessories extends StatefulWidget {
  const Accessories({super.key});

  @override
  State<Accessories> createState() => _AccessoriesState();
}

class _AccessoriesState extends State<Accessories> {
  final List<Image> accessories = [
    Image(image: AssetImage('assets/glass.jpg')),
    Image(image: AssetImage('assets/l.jpg')),
    Image(image: AssetImage('assets/brown.jpg')),
    Image(image: AssetImage('assets/a.jpg')),
    Image(image: AssetImage('assets/g.jpg')),
    Image(image: AssetImage('assets/che.jpg')),
    Image(image: AssetImage('assets/pink.webp')),
    Image(image: AssetImage('assets/black.webp')),


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
                'All categories of accessories are available here',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GridView.builder(
                itemCount: accessories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 3 / 4, // Adjust ratio as needed
                ),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: accessories[index],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
