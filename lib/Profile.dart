import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  int _currentIndex=2;
  @override

  Widget build(BuildContext context) {
    
    return Scaffold(
      //backgroundColor: Colors.yellowAccent,

      body: SingleChildScrollView(

        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height:110 ,
                    decoration: const  BoxDecoration(
                      image : DecorationImage(
                        image:  AssetImage("assets/grey.png"),
                        fit : BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Padding(
                        padding: EdgeInsets.only(top:50,right:0,left: 25),
                        child: Row(
                         // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child:const Center(
                               child: CircleAvatar(
                                 backgroundImage: AssetImage("assets/zenia.png"),
                                 radius: 25,
                               ),


                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Hi Yoga Lover!",
                                    style: GoogleFonts.lato(
                                      letterSpacing: 1,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color:Colors.black,

                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 99.0),
                              child: IconButton(
                                onPressed: () {Navigator.push(context, MaterialPageRoute(builder :(context) => Profile()));   },
                                icon: Icon(Icons.edit),
                                color: Colors.deepOrange,

                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),

                ],
              ),
              const SizedBox(
                height: 5,
              ),
              ///row///children->container////child--->row////
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 95),
                    child: IconButton(onPressed: () {  },
                      icon: Icon(Icons.circle_notifications),
                      color: Colors.deepOrange,
                      iconSize: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const [
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color:Colors.black,

                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: IconButton(onPressed: () {  },
                      icon: Icon(Icons.circle_notifications),
                      iconSize: 35,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const [
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color:Colors.black,

                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const [
                        Text(
                          "CURRENT STREAK",
                          style: TextStyle(
                            fontSize: 18.0,
                           // fontWeight: FontWeight.bold,
                            color:Colors.grey,

                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const [
                        Text(
                          "LONGEST STREAK",
                          style: TextStyle(
                            fontSize: 18.0,
                            //fontWeight: FontWeight.bold,
                            color:Colors.grey,

                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(

                width: double.infinity,
                child:  RawMaterialButton(

                  fillColor: Colors.white,
                  elevation: 11.0,
                  padding: EdgeInsets.symmetric(vertical: 1.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.0)

                  ),

                  onPressed: () { },
                   child: TextButton(
                     onPressed: (){},
                    child: Row(
                      children : [
                        IconButton(onPressed: () {  },
                          icon: Icon(Icons.lock),
                          color: Colors.deepOrange,
                          iconSize: 35,
                        ),
                         Text("Sign Up and Unlock more stats",
                        style: GoogleFonts.mavenPro(
                          fontWeight: FontWeight.bold,
                           color: Colors.deepOrangeAccent,
                          fontSize: 24,
                        ),
                        ),
                    ],

                  ),
                  ),

                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(onPressed: (){},
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: IconButton(onPressed: () {  },
                          icon: Icon(Icons.verified_user),
                          color: Colors.deepOrange,
                          iconSize: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:const [
                            Text(
                              "My Personal Goal",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color:Colors.black,

                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 115.0),
                        child: Row(
                          children: const [
                            Text("Get in shape",
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: IconButton(onPressed: () {  },
                              icon: Icon(Icons.arrow_forward_ios_outlined),
                              color: Colors.grey,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
              ),

              TextButton(onPressed: (){},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: IconButton(onPressed: () {  },
                        icon: const Icon(Icons.wrap_text_outlined),
                        color: Colors.deepOrange,
                        iconSize: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text(
                            "My Level",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 185.0),
                      child: Row(
                        children: const [
                          Text("Beginner",
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              TextButton(onPressed: (){},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: IconButton(onPressed: () {  },
                        icon: Icon(Icons.access_time_rounded),
                        color: Colors.deepOrange,
                        iconSize: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text(
                            "Practice Reminder",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170.0),
                      child: Row(
                        children: const [
                          Text("off",
                            style: TextStyle(
                              color: Colors.grey,
                            ),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              TextButton(onPressed: (){},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: IconButton(onPressed: () {  },
                        icon: const Icon(Icons.download_sharp),
                        color: Colors.deepOrange,
                        iconSize: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text(
                            "Downloads",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 180.0),
                      child: Row(
                        children: const [
                          Text("Premium",
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                            ),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),

              TextButton(onPressed: (){},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: IconButton(onPressed: () {  },
                        icon: Icon(Icons.person),
                        color: Colors.deepOrange,
                        iconSize: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text(
                            "Invite Friends",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 220.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              TextButton(onPressed: (){},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: IconButton(onPressed: () {  },
                        icon: Icon(Icons.share),
                        color:  Colors.deepOrange,
                        iconSize: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text(
                            "Share Success",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),

                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 210.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(

                width: double.infinity,
                child:  RawMaterialButton(

                  fillColor: Colors.deepPurpleAccent,
                  elevation: 11.0,
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)

                  ),

                  onPressed: () { },
                  child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children :  [

                         Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Unlimited Practices with Zenia",
                            style: GoogleFonts.mavenPro(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 33.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.forward),
                            color: Colors.white,
                            iconSize: 30,
                          ),
                        ),
                      ],

                    ),
                  ),

                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 349.0),
                child: Text("GENERAL",
                style: TextStyle(

                ),
                ),
              ),
              TextButton(onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:const [
                          Text(
                            "Terms of Service",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 230.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              TextButton(onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 250.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              TextButton(onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text(
                            "Rate the App",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 260.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              TextButton(onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text(
                            "Contact Us",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 290.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              TextButton(onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text(
                            "FAQ",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 335.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 349.0),
                child: Text("ACCOUNT",
                  style: TextStyle(

                  ),
                ),
              ),
              TextButton(onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text(
                            "Subscription",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 278.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              TextButton(onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Text(
                            "Restore Purchase",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.black,

                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 240.0),
                          child: IconButton(onPressed: () {  },
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(

                width: double.infinity,
                child:  RawMaterialButton(

                  fillColor: Colors.deepPurpleAccent,
                  elevation: 11.0,
                  padding: EdgeInsets.symmetric(vertical: 0.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)

                  ),

                  onPressed: () { },
                  child: TextButton(
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children :  [

                         Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Become a teacher",
                            style: GoogleFonts.oxygenMono(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ),
                        IconButton(onPressed: (){},
                            icon: const Icon(Icons.arrow_forward_sharp),
                            color: Colors.white,
                            iconSize: 35,
                        ),
                        const Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/teacher.png",
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
                height: 30,
              ),
              const Text("MADE WITH <3"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.deepOrangeAccent,
        selectedBackgroundColor: Colors.white,

        onTap: (int val) {
          //returns tab id which is user tapped
        },
        currentIndex: 3,
        items: [
          FloatingNavbarItem(icon: Icons.home_filled, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.category_rounded, title: 'Challenge'),
          FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
        ],
      ),
    );
  }
}




