import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobsque/screens/language_screen.dart';
import 'package:jobsque/screens/notifications_screen.dart';

import '../components/grey_divider.dart';
import '../utils/navigation_util.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // int counter = 0;
  // bool isPassword = true;

  // var emailController = TextEditingController();
  // List<IconData> ic = [
  //   Icons.person,
  //   Icons.shopping_bag_outlined,
  //   Icons.language,
  //   Icons.location_pin,
  //   Icons.credit_card,
  //   Icons.settings,
  //   Icons.list_alt,
  //   Icons.question_answer
  // ];
  // List<String> menu = [
  //   "My Account",
  //   "My Orders",
  //   "language Settings",
  //   "Shipping Address",
  //   "My Cards",
  //   "Settings",
  //   "Privacy Policy",
  //   "FAQ",
  // ];

  // List navs = [
  //   "/check_out",
  //   "/cart",
  //   "/payment",
  //   "/address",
  //   "/notifications",
  //   "/profile",
  // ];
  final ImagePicker picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            actions: [
              InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      "assets/images/logout.svg",
                    ),
                  ))
            ],
            leading: IconButton(
                onPressed: () {
                  NavigationUtils.offScreen(context);
                },
                icon: const Icon(Icons.arrow_back_ios)),
            centerTitle: true,
            title: const Text("Profile"),
            elevation: 0,
            backgroundColor: Color(0xFFD6E4FF),
            foregroundColor: Colors.black),
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                screen(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 375.0),
                    ),
                    pp(),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 225.0),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 80, bottom: 5),
                      child: const Text(
                        "John Doe",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //account description
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        "Ui/Ux Designer",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF6B7280)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    //applied, reviewed, contacted
                    Container(
                      height: 75,
                      margin: EdgeInsets.only(top: 12, left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Color(0xFFFAFAFA),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15, right: 15),
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Column(
                              children: [
                                Text(
                                  "Applied",
                                  style: TextStyle(
                                      color: Color(0xFF6B7280), fontSize: 14),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "46",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          VerticalDivider(
                            endIndent: 12,
                            indent: 12,
                            color: Colors.grey,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30, right: 30),
                            padding: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Text(
                                  "Reviewed",
                                  style: TextStyle(
                                      color: Color(0xFF6B7280), fontSize: 14),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "23",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          VerticalDivider(
                            endIndent: 12,
                            indent: 12,
                            color: Colors.grey,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            padding: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Text(
                                  "Contacted",
                                  style: TextStyle(
                                      color: Color(0xFF6B7280), fontSize: 14),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "16",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    //about
                    SizedBox(
                        child: ListTile(
                          leading: Text(
                            "About",
                            style: TextStyle(
                                color: Color(0xFF6B7280), fontSize: 16),
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                  color: Color(0xFF3366FF), fontSize: 14),
                            ),
                          ),
                        ),
                        height: 20),
                    //about text field
                    Container(
                      margin: EdgeInsets.only(
                          top: 30, left: 20, right: 20, bottom: 10),
                      child: Text(
                          "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.",
                          maxLines: 4,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Color(0xFF6B7280),
                              fontWeight: FontWeight.w400)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    //general
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(color: Color(0xFFF4F4F5)),
                      height: 36,
                      width: MediaQuery.sizeOf(context).width,
                      child: Text("General",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6B7280))),
                    ),
                    //edit profile
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Color(0xFFD6E4FF),
                              child: Icon(Icons.person_outline)),
                          title: const Text("Edit Profile"),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (_) => const EditProfileScreen(),
                            //     ));
                          },
                        ),
                      ),
                    ),
                    greyDivider(),
                    //portfolio
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Color(0xFFD6E4FF),
                              child: Icon(Icons.folder_open_outlined)),
                          title: const Text("Portfolio"),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (_) => const EditProfileScreen(),
                            //     ));
                          },
                        ),
                      ),
                    ),
                    greyDivider(),
                    //language
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Color(0xFFD6E4FF),
                              child: Icon(Icons.language)),
                          title: const Text("Language"),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const LanguageScreen(),
                                ));
                          },
                        ),
                      ),
                    ),
                    greyDivider(),
                    //notification
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Color(0xFFD6E4FF),
                              child: Icon(Icons.notifications_outlined)),
                          title: const Text("Notfications"),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const NotificationsScreen(),
                                ));
                          },
                        ),
                      ),
                    ),
                    greyDivider(),
                    //login and security
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Color(0xFFD6E4FF),
                              child: Icon(Icons.lock_outline)),
                          title: const Text("Login And Security"),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (_) => const EditProfileScreen(),
                            //     ));
                          },
                        ),
                      ),
                    ),
                    greyDivider(),
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(color: Color(0xFFF4F4F5)),
                      height: 36,
                      width: MediaQuery.sizeOf(context).width,
                      child: Text("Others",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF6B7280))),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          leading: const Text(
                            "Accessbility",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (_) => const EditProfileScreen(),
                            //     ));
                          },
                        ),
                      ),
                    ),
                    greyDivider(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          leading: const Text(
                            "Help Center",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (_) => const EditProfileScreen(),
                            //     ));
                          },
                        ),
                      ),
                    ),
                    greyDivider(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          leading: const Text(
                            "Terms & Conditions",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (_) => const EditProfileScreen(),
                            //     ));
                          },
                        ),
                      ),
                    ),
                    greyDivider(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: ListTile(
                          leading: const Text(
                            "Privacy Policy",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          trailing: const Icon(Icons.arrow_forward),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (_) => const EditProfileScreen(),
                            //     ));
                          },
                        ),
                      ),
                    ),
                    greyDivider(),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget screen() {
    return Image(
      fit: BoxFit.fill,
      height: 200,
      width: MediaQuery.sizeOf(context).width,
      image: AssetImage("assets/images/color.png"),
    );
  }

  Widget pp() {
    return Container(
        child: CircleAvatar(
      backgroundImage: ExactAssetImage("assets/images/placeholder.png"),
      minRadius: 50,
      maxRadius: 80,
    ));
  }
}
