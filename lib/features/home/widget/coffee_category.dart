import 'package:flutter/material.dart';

class CoffeeCategory extends StatelessWidget {
  const CoffeeCategory({
    super.key,
    required this.coffeeName,
    required this.currentIndex,
    required this.chosenIndex,
    this.onTap,
  });

  final String coffeeName;
  final int currentIndex;
  final int chosenIndex;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color:
                currentIndex == chosenIndex ? Color(0xFFC67C4E) : Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Text(
              coffeeName,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: currentIndex == chosenIndex
                    ? const Color(0xFFFfffff)
                    : Color(0xFF2F4B4E),
                fontSize: MediaQuery.of(context).size.width * 0.037,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
