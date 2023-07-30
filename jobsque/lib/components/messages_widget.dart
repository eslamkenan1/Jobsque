import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: Stack(children: [
              CircleAvatar(
                child: Image.network(
                    "https://e7.pngegg.com/pngimages/708/311/png-clipart-twitter-twitter-thumbnail.png"),
                radius: 30,
              )
            ]),
            title: Text("Twitter",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
            subtitle: Text("Here's the link fsfdfg"),
            trailing: Text(
              "12:39",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        Divider(),
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: Stack(children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.network(
                    "https://seeklogo.com/images/G/gojek-solv-logo-A807432D2F-seeklogo.com.png"),
                radius: 30,
              )
            ]),
            title: Text("Gojek indonesia",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
            subtitle: Text("Let's Keep in touch"),
            trailing: Text(
              "12:39",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        Divider(),
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: Stack(alignment: Alignment.topLeft, children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.network(
                    "https://freelogopng.com/images/all_img/1656181199icon-shopee-png.png"),
                radius: 30,
              ),
              CircleAvatar(radius: 10, child: Text("1"))
            ]),
            title: Text("Shoope",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
            subtitle: Text("Thanks David"),
            trailing: Text(
              "12:39",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        Divider(),
        InkWell(
          onTap: () {},
          child: ListTile(
            leading: Stack(alignment: Alignment.topLeft, children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.network(
                    "https://1000logos.net/wp-content/uploads/2021/03/Dana-logo.png"),
                radius: 30,
              ),
              CircleAvatar(radius: 10, child: Text("1"))
            ]),
            title: Text("Dana",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
            subtitle: Text("Thank you For your attention"),
            trailing: Text(
              "Yesterday",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
