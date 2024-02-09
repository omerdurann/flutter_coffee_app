import 'package:flutter/material.dart';
import 'package:flutter_application_1/featuress/home/widget/coffee_category.dart';
import 'package:flutter_application_1/featuress/home/widget/image_card.dart';
import 'package:flutter_application_1/featuress/home/widget/product_card.dart';
import 'package:flutter_application_1/featuress/home/widget/user_info.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> coffeeCategories = [
    "Cappuccino",
    "Machiato",
    "Latte",
    "Americano",
    "Turkish Coffee",
  ];

  List<dynamic> products = [
    {
      "name": "Cappuccino",
      "price": "5.99",
      "image": "assets/images/coffee2.png",
      "score": "4.5",
    },
    {
      "name": "Machiato",
      "price": "6.99",
      "image": "assets/images/coffee3.png",
      "score": "4.5",
    },
    {
      "name": "Latte",
      "price": "7.99",
      "image": "assets/images/coffee4.png",
      "score": "4.5",
    },
    {
      "name": "Americano",
      "price": "8.99",
      "image": "assets/images/coffee5.png",
      "score": "4.5",
    },
    {
      "name": "Turkish Coffee",
      "price": "9.99",
      "image": "assets/images/coffee6.png",
      "score": "4.5",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const Expanded(
                  flex: 2,
                  child: UserInfo(),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: const Color(0xFFF9F9F9),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: SizedBox(
                            height: 50,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: coffeeCategories.length,
                              itemBuilder: (BuildContext context, int index) {
                                return CoffeeCategory(
                                  coffeeName: coffeeCategories[index],
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                          ),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.width,
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.7,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                              ),
                              itemCount: products.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ProductCard(
                                  name: products[index]["name"],
                                  price: products[index]["price"],
                                  image: products[index]["image"],
                                  score: products[index]["score"],
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const ImageCard(),
          ],
        ),
      ),
    );
  }
}
