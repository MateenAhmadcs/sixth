import 'package:flutter/material.dart';
import 'extra.dart'; // Import second screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageListScreen(),
    );
  }
}

class ImageListScreen extends StatelessWidget {
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
        title: Text("Image List View"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.image, size: 50, color: Colors.white),
                  SizedBox(height: 10),
                  Text("Navigation Menu",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Horizontal Image Slider"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HorizontalScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.screen_share),
              title: Text("Third Screen"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExtraScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.lightBlue.shade100, // Card color
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(imagePaths[index], fit: BoxFit.cover),
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
    );
  }
}

class HorizontalScreen extends StatelessWidget {
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
      appBar: AppBar(title: Text("Horizontal Image Slider")),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.orange.shade100,
                margin: EdgeInsets.symmetric(horizontal: 10),
                elevation: 5,
                child: Container(
                  width: 200,
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
