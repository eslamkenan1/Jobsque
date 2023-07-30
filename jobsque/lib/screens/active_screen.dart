import 'package:flutter/material.dart';

class ActiveScreen extends StatefulWidget {
  const ActiveScreen({super.key});

  @override
  State<ActiveScreen> createState() => _ActiveScreenState();
}

class _ActiveScreenState extends State<ActiveScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(left: 15, top: 10),
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(color: Color(0xFFF4F4F5)),
          height: 36,
          width: MediaQuery.sizeOf(context).width,
          child: Text("1 Job",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6B7280))),
        ),
        InkWell(
          onTap: () {},
          child: Column(
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
                margin: EdgeInsets.only(
                  top: 5,
                ),
                height: 30,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  label_Function(const Text(
                    "fulltime",
                    style: TextStyle(color: Color(0xFF3366FF)),
                  )),
                  const SizedBox(width: 10),
                  label_Function(const Text("Remote",
                      style: TextStyle(color: Color(0xFF3366FF)))),
                  SizedBox(width: 120),
                  const Text(
                    "Posted 2 days ago",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF374151),
                        letterSpacing: 0.12),
                  ),
                ]),
              ),
              Container(
                height: 75,
                margin: EdgeInsets.only(top: 12, left: 20, right: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFD1D5DB)),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            child: Text("1"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "BioData",
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "- - - -",
                          style: TextStyle(color: Colors.blue, fontSize: 25),
                        )),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            child: Text("2"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Type of Work",
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          "- - - -",
                          style: TextStyle(color: Colors.blue, fontSize: 25),
                        )),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            child: Text("3"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Upload Portfolio",
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
          color: Colors.grey,
        ),
      ]),
    );
  }

  Container label_Function(Text text) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 30,
      child: text,
      decoration: BoxDecoration(
          color: Color(0xFFD6E4FF),
          // border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
