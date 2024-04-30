import 'package:amazon_cambodia/product_detail_screen.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF144522),
        leading: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nice Drink \nFast Delivery",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              _ProductItem(
                name: "Cappuccino",
                calories: "250 calories",
                image: "assets/images/cappuchino2.png",
              ),
              SizedBox(
                height: 15,
              ),
              _ProductItem(
                name: "Matcha Latte",
                calories: "150 calories",
                image: "assets/images/matcha-latte.png",
              ),
              SizedBox(
                height: 15,
              ),
              _ProductItem(
                name: "Berry Smoothie",
                calories: "300 calories",
                image: "assets/images/pinkDrink.png",
              ),
              SizedBox(
                height: 15,
              ),
              _ProductItem(
                name: "Iced Coffee",
                calories: "200 calories",
                image: "assets/images/starbucks1.png",
              ),
              SizedBox(
                height: 15,
              ),
              _ProductItem(
                name: "Iced Tea",
                calories: "100 calories",
                image: "assets/images/starbucks2.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  final String name;
  final String calories;
  final String image;

  const _ProductItem({
    required this.name,
    required this.calories,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              name: name,
              calories: calories,
              image: image,
            ),
          ),
        );
      },
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 15),
                  child: Text(
                    "Recommended",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF144522),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 25,
                          color: Color(0xFF144522),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        calories,
                        style: const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Color(0xFF144522),
                  ),
                  child: const Center(
                    child: Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Hero(
              tag: image,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
