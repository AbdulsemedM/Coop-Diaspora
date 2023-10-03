import 'package:diaspora/Home2.dart';
import 'package:diaspora/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.25,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 20, 8, 8),
                child: Text(
                  "Discover Coop-Bank's\nDiaspora Banking",
                  style: GoogleFonts.kanit(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.35,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 10, 90, 8),
                child: Text(
                  " Diaspora Banking is one of the banking segments of CoopBank which has been given due emphasis. CoopBank Diaspora Account has been operational since August 2012.",
                  style: GoogleFonts.kanit(
                    fontSize: 15,
                    color: Colors_selector.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Diaspora.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors_selector
                              .primaryColor // Set the background color of the button
                          ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home2()),
                        );
                      },
                      child: Text(
                        "Learn More",
                        style: GoogleFonts.kanit(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
