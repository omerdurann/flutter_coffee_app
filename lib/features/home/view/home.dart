import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_application_1/features/home/widget/coffee_category.dart';
import 'package:flutter_application_1/features/home/widget/image_card.dart';
import 'package:flutter_application_1/features/home/widget/product_card.dart';
import 'package:flutter_application_1/features/home/widget/user_info.dart';

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

  int chosenIndex = 0;

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
      resizeToAvoidBottomInset: true,
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.11,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: coffeeCategories.length,
                              itemBuilder: (BuildContext context, int index) {
                                return CoffeeCategory(
                                  coffeeName: coffeeCategories[index],
                                  currentIndex: index,
                                  chosenIndex: chosenIndex,
                                  onTap: () {
                                    setState(
                                      () {
                                        chosenIndex = index;
                                      },
                                    );
                                  },
                                ).animate().shake(
                                      duration:
                                          const Duration(milliseconds: 50000),
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
                            height: MediaQuery.of(context).size.height * 0.36,
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
                                final product = products[index];
                                return ProductCard(
                                  name: product["name"],
                                  price: product["price"],
                                  image: product["image"],
                                  score: product["score"],
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
