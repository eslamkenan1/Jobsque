import 'package:flutter/material.dart';
import 'package:jobsque/screens/active_screen.dart';
import 'package:jobsque/screens/rejected_screen.dart';

class AppliedScreen extends StatefulWidget {
  const AppliedScreen({super.key});

  @override
  State<AppliedScreen> createState() => _AppliedScreenState();
}

class _AppliedScreenState extends State<AppliedScreen> {
  PageController controller = PageController();
  bool value = true;
  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text("Applied"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ToggleButtons(
              borderRadius: BorderRadius.circular(20),
              constraints: BoxConstraints(minWidth: 175, minHeight: 50),
              selectedColor: Colors.white,
              color: Colors.grey,
              fillColor: Color(0xFF091A7A),
              isSelected: isSelected,
              children: [Text("Applied"), Text("Rejected")],
              onPressed: (int newIndex) {
                setState(() {
                  for (int index = 0; index < isSelected.length; index++) {
                    if (index == newIndex) {
                      isSelected[index] = true;
                    } else {
                      isSelected[index] = false;
                    }

                    if (newIndex == 1) {
                      controller.nextPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut);
                    } else {
                      controller.previousPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut);
                    }
                  }
                });
              },
            ),
          ),
          Expanded(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller,
              children: const [
                ActiveScreen(),
                RejectedScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
