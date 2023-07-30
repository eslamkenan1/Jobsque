import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../components/switch_tile.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFDFEFF),
        iconTheme: IconThemeData(color: Color(0xFF3D3E42)),
        automaticallyImplyLeading: true,
        title: Text(
          'Notifications',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontFamily: 'Outfit',
                color: Color(0xFF111725),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: const Color(0xfff4f4f4),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: Text(
                "Job notification",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: const Color(0xff6f7478),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Card(
                color: Colors.white,
                child: Column(
                  children: [
                    SwitchTile(
                      notificationName: "Your Job Search Alert",
                    ),
                    SwitchTile(
                      notificationName: "Job Application Update",
                    ),
                    SwitchTile(
                      notificationName: "Job Application Reminders",
                    ),
                    SwitchTile(
                      notificationName: "Job You May Be Interested In",
                    ),
                    SwitchTile(
                      notificationName: "Job Seekers Update",
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: Text(
                "Other notification",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: const Color(0xff6f7478),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Card(
                color: Colors.white,
                child: Column(
                  children: [
                    SwitchTile(
                      notificationName: "Show Profile",
                    ),
                    SwitchTile(
                      notificationName: "All Messages",
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
