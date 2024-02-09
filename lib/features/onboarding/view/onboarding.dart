import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/routers/route_names.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF000000),
        body: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                "assets/images/coffee.png",
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  const Text(
                    "Coffee so good,\n your taste buds\n will love it.",
                    style: TextStyle(
                      fontFamily: "Sora",
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "The best grain, the finest roast, the\n powerful flavor.",
                    style: TextStyle(
                      color: Color(0xFFA9A9A9),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.bottomNavbar);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.08,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        color: Color(0xFFC67C4E),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
