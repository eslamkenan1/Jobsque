import 'package:flutter/material.dart';
import 'package:jobsque/models/onboarding_model.dart';
import 'package:jobsque/screens/bottom_nav_bar_button.dart';
import 'package:jobsque/screens/signup_screen.dart';
// import 'package:jobsque/utils/navigation_util.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import '../components/logo_splash.dart';
import '../utils/navigation_util.dart';
import 'home_screen.dart';

class ObScreen extends StatefulWidget {
  const ObScreen({super.key});

  @override
  State<ObScreen> createState() => _ObScreenState();
}

class _ObScreenState extends State<ObScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const LogoSplash(),
        leadingWidth: 200,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          MaterialButton(
            onPressed: () {
              NavigationUtils.goTo(context, NavBar());
            },
            child: Text("skip",
                style: TextStyle(fontSize: 20, color: Colors.grey.shade400)),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: content.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .55,
                        alignment: Alignment.center,
                        child: Image.asset(content[i].image!,
                            width: MediaQuery.of(context).size.width),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 15),
                      child: Text(
                          overflow: TextOverflow.clip,
                          content[i].title!,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 30),
                        child: Text(content[i].description!,
                            style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 136, 130, 130))),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            content.length,
                            (index) => buildDot(index, context),
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: MaterialButton(
                        height: 50,
                        minWidth: MediaQuery.of(context).size.width * .90,
                        color: Colors.blue[500],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(currentIndex == (content.length - 1)
                            ? "Get Started"
                            : "next"),
                        onPressed: () {
                          if (currentIndex == (content.length - 1)) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const SignUpScreen(),
                              ),
                            );
                          }
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.bounceIn);
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      // height: 10,
      // width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor),

      child: Icon(
          size: 12.5,
          currentIndex == index ? Icons.circle : Icons.circle_outlined,
          color: currentIndex == index
              ? const Color.fromARGB(255, 0, 38, 75)
              : Colors.blue),
    );
  }
}
