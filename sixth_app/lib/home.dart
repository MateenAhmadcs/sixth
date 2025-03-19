import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixth_app/tabs/accessories.dart';
import 'package:sixth_app/tabs/clothing.dart';
import 'package:sixth_app/tabs/shoes.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.shopping_cart),SizedBox(width: 7)

      ],
          title: Text(
            'E-SHOP',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
          centerTitle: true,


          backgroundColor: Colors.grey,
          elevation: 8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
        ),

        body: Card(
          elevation: 8,
          child: Column(
            children: [
             TabBar(tabs:
            [
              Tab(text: 'Clothing',),
              Tab(text: 'Shoes',),
              Tab(text: 'Accessories',)
            ]),
              Expanded(
                child: TabBarView(
                    children:[
                Clothing(),
                  Shoes(),
                    Accessories()
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
