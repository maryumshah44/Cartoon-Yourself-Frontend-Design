import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Cartoonify",
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  child: RawMaterialButton(
                    fillColor: Colors.white70,
                    elevation: 11.0,
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {},
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 87),
                            child: Text(
                              "Cartoon",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 29,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Center(
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/4.png",
                              ),
                              radius: 65,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              // height: 90,
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Colors.white70,
                elevation: 11.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {},
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 87),
                        child: Text(
                          "Arcane",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/3.png",
                          ),
                          radius: 65,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              // height: 90,
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Colors.white70,
                elevation: 11.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {},
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 87),
                        child: Text(
                          "Pixar",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/5.png",
                          ),
                          radius: 65,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              // height: 90,
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Colors.white70,
                elevation: 11.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {},
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 87),
                        child: Text(
                          "Caricature",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/6.png",
                          ),
                          radius: 65,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              // height: 90,
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Colors.white70,
                elevation: 11.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                onPressed: () {},
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 87),
                        child: Text(
                          "Illustration",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/7.png",
                          ),
                          radius: 65,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.deepPurple,
        selectedBackgroundColor: Colors.white,
        onTap: (int val) {
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
