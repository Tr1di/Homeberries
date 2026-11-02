import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homeberries',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu
          ),
          centerTitle: true,
          title: const Text("Homeberries"),
          actions: [
            Icon(
              Icons.shopping_cart
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 24,
            children: [
              Section(
                  title: "Категории",
                  children: [
                    Category(
                      title: "Devices",
                      color: Colors.green,
                      icon: Icons.devices,
                    ),

                    Category(
                      title: "Home",
                      color: Colors.amber,
                      icon: Icons.home,
                    ),
                  ]
              ),

              Section(
                  title: "Популярное",
                  children: [
                    ProductCard(name: "Ноутбук"),
                    ProductCard(name: "Телефон")
                  ]
              ),
            ],
          ),
        )
      ),
    );
  }
}

class Section extends StatelessWidget {

  final String title;
  final List<Widget> children;

  const Section({super.key,
    required this.title,
    required this.children
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight(500)
          ),
        ),
        Row(
          spacing: 12,
          children: children,
        )
      ],
    );
  }
}

class Category extends StatelessWidget {

  final String title;
  final Color color;
  final IconData icon;

  const Category({
    super.key,
    required this.title,
    required this.color,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
                icon
            ),
          ),
        ),
        Text(title)
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  
  final String name;

  const ProductCard({
    super.key, 
    required this.name
  });
  
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name),
        ),
    );
  }
  
}