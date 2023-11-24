import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  String name;
  String description;
  double price;
  String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: "Espresso",
      description: "Strong and concentrated coffee",
      price: 2.99,
      imageUrl: "https://example.com/espresso.jpg",
    ),
    Product(
      name: "Latte",
      description: "Coffee with steamed milk",
      price: 3.99,
      imageUrl: "https://example.com/latte.jpg",
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Coffee Shop'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                products[index].imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(products[index].name),
              subtitle: Text(products[index].description),
              trailing: Text('\$${products[index].price.toStringAsFixed(2)}'),
              onTap: () {
                // Handle product selection
                // You can navigate to a detailed product page or add the product to a cart
              },
            );
          },
        ),
      ),
    );
  }
}
