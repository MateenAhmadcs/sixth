import 'package:flutter/material.dart';

class HorizontalScreen extends StatelessWidget {
  // List of asset image paths
  final List<String> imagePaths = [
    'assets/coffee.jpg',
    'assets/download.jpg',
    'assets/images.jpg',
    'assets/abc.jpg',
    'assets/b.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal Image Slider"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20), // Add space around the slider
        child: SizedBox(
          height: 250, // Set height for the slider
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Horizontal scrolling
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.lightBlue.shade100, // Card background color
                margin: EdgeInsets.symmetric(horizontal: 10), // Space between cards
                elevation: 5,
                child: Container(
                  width: 200, // Width of each card
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(imagePaths[index], fit: BoxFit.cover),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Image ${index + 1}",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
