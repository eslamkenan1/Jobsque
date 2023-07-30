import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/components/logo_splash.dart';
import 'package:jobsque/screens/home_screen.dart';
import 'package:jobsque/screens/bottom_nav_bar_button.dart';
import 'package:jobsque/utils/navigation_util.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController? usernameController = TextEditingController();
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  bool _passwordVisible = true;

  void _toggle() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              NavigationUtils.goTo(context, NavBar());
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [LogoSplash()],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Create Account",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Please create an account to find your dream job",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            margin: EdgeInsets.only(top: 50),
            child: TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Icons.person_2_outlined),
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.grey))),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            margin: EdgeInsets.only(top: 20),
            child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey))),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            margin: EdgeInsets.only(top: 20),
            child: TextFormField(
                validator: (passwordController) {
                  if (passwordController!.length < 8) {
                    return "password too short";
                  } else {
                    return null;
                  }
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: !_passwordVisible,
                controller: passwordController,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: _toggle,
                        icon: Icon(_passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey))),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Password must be at least 8 characters",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("already have an account ?"),
              TextButton(
                  style: ButtonStyle(alignment: Alignment.centerLeft),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
          MaterialButton(
            height: 40,
            minWidth: MediaQuery.sizeOf(context).width * .9,
            onPressed: () {},
            child:
                Text("Create Account", style: TextStyle(color: Colors.white)),
            color: Colors.blue.shade700,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          Row(children: [
            Expanded(child: Divider()),
            Text("Or Sign Up With Account",
                style: TextStyle(color: Colors.grey.shade500)),
            Expanded(child: Divider()),
          ]),
          Row(
            children: [
              /// google Card///
              Container(
                margin: EdgeInsets.only(bottom: 20, left: 30),
                width: 150,
                height: 60,
                child: Card(
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            "assets/images/google_icon.png",
                            scale: 5,
                          ),
                        ),
                        Expanded(child: Text("Google"))
                      ],
                    ),
                  ),
                ),
              ),
              //facebook Card//
              Container(
                margin: EdgeInsets.only(bottom: 20, left: 30),
                width: 150,
                height: 60,
                child: Card(
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            "assets/images/fb_icon.png",
                            scale: 8,
                          ),
                        ),
                        Expanded(child: Text("Facebook"))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      )),
      // bottomNavigationBar: BottomNavBar(
      //     buttonIcon: Icon(Icons.safety_check), buttonText: Text("ayyy")),
    );
  }
}
