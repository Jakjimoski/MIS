import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productDescription;
  final String productImage;

  const ProductDetailsScreen({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productDescription,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productName,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xffebebeb),
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              size: 40,
              color: Color(0xffff6700),
            )),
        backgroundColor: const Color(0xff004e98),
      ),
      body: Container(
        color: const Color(0xff004e98),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              productImage,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              productName,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              productPrice,
              style: const TextStyle(fontSize: 40, color: Color(0xffff6700)),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              productDescription,
              style: const TextStyle(fontSize: 24, color: Colors.amber),
            )
          ],
        ),
      ),
    );
  }
}
