import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50, bottom: 20),
              width: MediaQuery.sizeOf(context).width,
              child: ListTile(
                  title: const Text("Hi, dennis 👋",
                      style: TextStyle(fontSize: 40, color: Colors.black)),
                  subtitle: const Text(
                    "Create a better future for yourself here",
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Stack(
                    alignment: Alignment.center,
                    fit: StackFit.passthrough,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 60,
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none_outlined),
                      ),
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              // decoration: BoxDecoration(
              //     color: Colors.white, borderRadius: BorderRadius.circular(22)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: BorderSide(color: Colors.grey)),
                        border: InputBorder.none,
                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ))
                ],
              ),
            ),
            ListTile(
              leading: Text("Suggested Job",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              trailing: TextButton(onPressed: () {}, child: Text("View All")),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              height: 225,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onHover: (value) {},
                    // radius: 20,
                    // highlightColor: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * .8,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.blue)),
                          child: Column(children: [
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * .8,
                              height: 20,
                              child: ListTile(
                                title: Text("product designer"),
                                subtitle: Text("zoom • United States"),
                                leading: Image.asset(
                                  "assets/images/zoom_icon.png",
                                  fit: BoxFit.contain,
                                ),
                                trailing: IconButton(
                                    icon: Icon(Icons.bookmark_outline),
                                    onPressed: () {}),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 60, left: 20),
                              height: 30,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    label_Function(Text("fulltime")),
                                    SizedBox(width: 10),
                                    label_Function(Text("Remote")),
                                    SizedBox(width: 10),
                                    label_Function(Text("Design"))
                                  ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 50, left: 10),
                              // alignment: AlignmentDirectional.bottomStart,
                              child: Row(
                                // mainAxisSize: MainAxisSize.max,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$12k-15k ",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text("/month"),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    margin:
                                        EdgeInsets.only(left: 70, bottom: 12.5),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Apply now",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 2,
                scrollDirection: Axis.horizontal,
              ),
            ),
            ListTile(
              leading: Text("Recent Jobs",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              trailing: TextButton(onPressed: () {}, child: Text("View All")),
            ),
            //senior ui/ux designer
            Column(
              children: [
                ListTile(
                  leading: Image.network(
                      fit: BoxFit.scaleDown,
                      "https://freelogopng.com/images/all_img/1657045399twitter-icon-png.png"),
                  title: Text("Senior Ui/Ux Designer"),
                  subtitle: Text("Twitter • Jakarta Indonesia"),
                  trailing: IconButton(
                      icon: Icon(Icons.bookmark_outline), onPressed: () {}),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 20),
                  height: 30,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        label_Function(Text("fulltime")),
                        SizedBox(width: 10),
                        label_Function(Text("Remote")),
                        SizedBox(width: 10),
                        label_Function(Text("Senior")),
                        SizedBox(width: 30),
                        Text(
                          "\$15K",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 5, 88, 8),
                              fontSize: 20),
                        ),
                        Text("/month")
                      ]),
                ),
                Divider(
                  endIndent: 20,
                  indent: 20,
                  color: Colors.grey,
                ),
              ],
            ),
//Senior Ux designer discord
            Column(
              children: [
                ListTile(
                  leading: Image.network(
                      fit: BoxFit.scaleDown,
                      "https://static.vecteezy.com/system/resources/previews/018/930/500/original/discord-logo-discord-icon-transparent-free-png.png"),
                  title: Text("Senior Ui/Ux Designer"),
                  subtitle: Text("Discord • Jakarta Indonesia"),
                  trailing: IconButton(
                      icon: Icon(Icons.bookmark_outline), onPressed: () {}),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 20),
                  height: 30,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        label_Function(Text("fulltime")),
                        SizedBox(width: 10),
                        label_Function(Text("Remote")),
                        SizedBox(width: 10),
                        label_Function(Text("Senior")),
                        SizedBox(width: 30),
                        Text(
                          "\$15K",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 5, 88, 8),
                              fontSize: 20),
                        ),
                        Text("/month")
                      ]),
                ),
                Divider(
                  endIndent: 20,
                  indent: 20,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container label_Function(Text text) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 30,
      child: text,
      decoration: BoxDecoration(
          color: Colors.blue,
          // border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
