import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_store/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromRGBO(15, 15, 15, 25),
      backgroundColor: const Color.fromRGBO(15, 15, 15, 25),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
        
            // name
            Row(
              children: [
                Text(
                  "Top",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.merriweather(
                    textStyle: const TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Text(
                  "Store",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.merriweather(
                    textStyle: TextStyle(
                      fontSize: 28,
                      color: Colors.deepOrange[400],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),
        
            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/bag_.png'),
            ),
        
            // title
            Text(
              "MEN'S ONLINE T-SHIRT STORE",
              style: GoogleFonts.merriweather(
                textStyle: const TextStyle(
                  fontSize: 25,
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),
            // sub
            Text(
              "We cover a wide variety of sizes for all, we ship to all regions around the globe",
              style: GoogleFonts.merriweatherSans(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[300],
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

            const SizedBox(height: 30),
        
            // button
            CustomButton(text: "Get Started",
            icon: Icons.arrow_forward_rounded,
            color: Colors.deepOrange[400],
            onTap: () {
              // go to home page
              Navigator.pushNamed(context, '/homepage');
            },
            )
          ],
        ),
      ),

    );
  }
}