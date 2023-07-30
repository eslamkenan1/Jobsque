import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/navbutton_pages.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: homeScreenItems,
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: CupertinoTabBar(
          inactiveColor: Colors.grey,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: _page == 0
                    ? Icon(
                        Icons.home,
                        color: _page == 0 ? Colors.blue : Colors.grey,
                      )
                    : Icon(
                        Icons.home_outlined,
                        color: _page == 0 ? Colors.blue : Colors.grey,
                      ),
                label: "Home",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: _page == 1
                    ? Icon(
                        Icons.message_outlined,
                        color: _page == 1 ? Colors.blue : Colors.white,
                      )
                    : Icon(Icons.message),
                label: "Messages",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: _page == 2
                    ? Icon(
                        Icons.shopping_bag,
                        color: _page == 2 ? Colors.blue : Colors.white,
                      )
                    : Icon(Icons.shopping_bag_outlined),
                label: "Applied",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: _page == 3
                    ? Icon(
                        Icons.bookmark,
                        color: _page == 3 ? Colors.blue : Colors.white,
                      )
                    : Icon(Icons.bookmark_outline),
                label: "Saved",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: _page == 4
                    ? Icon(
                        Icons.person,
                        color: _page == 4 ? Colors.blue : Colors.white,
                      )
                    : Icon(Icons.person),
                label: "Profile",
                backgroundColor: Colors.blue),
          ],
          onTap: navigationTapped),
    );
  }
}
