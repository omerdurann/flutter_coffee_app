import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

import "../home/view/home.dart";

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  List<Widget> widgets = [
    const Home(),
    const Text("qweqwe"),
    const Text("qweqwe"),
    const Text("qweqwe"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset("assets/svg/home.svg"),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: _currentIndex == 0
                        ? const Color(0xFFC67C4E)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset("assets/svg/heart.svg"),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: _currentIndex == 1
                        ? const Color(0xFFC67C4E)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset("assets/svg/bag.svg"),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: _currentIndex == 2
                        ? const Color(0xFFC67C4E)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset("assets/svg/notification.svg"),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: _currentIndex == 3
                        ? const Color(0xFFC67C4E)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
