import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_zenia/Explore.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: SizedBox(
          height: 816,
          child: Padding(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 79.0, left: 108, bottom: 56),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: const Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/1.png"),
                            radius: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 23, right: 178.0, top: 12),
                        child: Row(
                          children: const [
                            Text(
                              "Cartoonify",
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 75,
                ),
                const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter  Email",
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.mail, color: Colors.black),
                    )),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      fillColor: Colors.blueAccent,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      //fillColor: Colors.white,
                      hintText: "Confirm Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 55,
                ),
                Container(
                  width: double.infinity,
                  child: RawMaterialButton(
                    fillColor: Colors.deepPurple,
                    elevation: 10.0,
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () {
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Explore()));
                      }
                    }, //{ Navigator.push(context, MaterialPageRoute(builder :(context) => HomeView())); },
                    child: const Text(
                      "Log In",
                      style: TextStyle(color: Colors.white, fontSize: 19.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.deepPurple,
        selectedBackgroundColor: Colors.white,
        onTap: (int val) {
          //returns tab id which is user tapped
          //returns tab id which is user tapped
        },
        currentIndex: 1,
        items: [
          FloatingNavbarItem(icon: Icons.home_filled, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
        ],
      ),
    );
  }
}
