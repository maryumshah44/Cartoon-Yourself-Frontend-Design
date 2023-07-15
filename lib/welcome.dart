import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_zenia/Explore.dart';
import 'package:flutter_zenia/SignUp.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 108.0),
                    child: Container(
                      height: 480,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/1.png"),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 28.0, left: 75, bottom: 25),
                    child: Container(
                      height: 52,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "CARTOONIFY",
                            style: GoogleFonts.lato(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 5,
                                color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10.0, left: 95, bottom: 18),
                    child: Container(
                      height: 175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cartoon Yourself Now",
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              letterSpacing: 4,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: double.infinity,
                child: RawMaterialButton(
                  fillColor: Colors.deepPurple,
                  elevation: 10.0,
                  padding: EdgeInsets.symmetric(vertical: 13.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(52.0)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Explore()));
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.oxygen(
                        letterSpacing: 3, color: Colors.white, fontSize: 24.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " Already have an account? ",
                        style: GoogleFonts.dosis(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(right: 173.0),
                          child: SizedBox(
                            height: 28,
                            child: Center(
                              child: Text(
                                "Login",
                                style: GoogleFonts.dosis(
                                  fontSize: 20.0,
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "by pressing the Next button, you confirm and gurantee that you\n"
                    "have read and agree to our Terms of use and Privacy Policy ",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
