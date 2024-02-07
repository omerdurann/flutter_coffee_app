import 'package:flutter/material.dart';

class coffeeCategory extends StatelessWidget {
  const coffeeCategory({
    super.key,
    required this.coffeeName,
  });

  final String coffeeName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  coffeeName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF2F4B4E),
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
