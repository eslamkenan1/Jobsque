import 'package:flutter/material.dart';

import '../components/messages_widget.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
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
        title: Text("Messages"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width * .8,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: BorderSide(color: Colors.grey)),
                        border: InputBorder.none,
                        hintText: "Search Messages...",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 1, top: 5),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)),
                    minWidth: 10,
                    padding: EdgeInsets.all(10),
                    onPressed: () {},
                    child: Icon(Icons.filter_alt),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * .8,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 5),
                      MessageList(),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
