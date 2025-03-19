import 'package:flutter/material.dart';

class Shoes extends StatefulWidget {
  const Shoes({super.key});

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  final List<Image> shoes = [
    Image(image: AssetImage('assets/n.jpg')),
    Image(image: AssetImage('assets/i.jpg')),
    Image(image: AssetImage('assets/k.jpg')),
    Image(image: AssetImage('assets/e.jpg')),
    Image(image: AssetImage('assets/b.webp')),
    Image(image: AssetImage('assets/s.jpg')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
            child: Center(
              child: Text(
                'All categories of Footwear are available here',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          Expanded(
            child: Center(
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shoes.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 180,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: shoes[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
