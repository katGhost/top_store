import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_store/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromRGBO(15, 15, 15, 25),
      backgroundColor: Theme.of(context).colorScheme.background,
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
                    textStyle: TextStyle(
                      fontSize: 28,
                      color: Theme.of(context).colorScheme.primary,
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
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),
        
            // icon
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset('lib/images/bag_.png',
              height: 300,
              ),
            ),
        
            // title
            Text(
              "MEN'S ONLINE T-SHIRT STORE",
              style: GoogleFonts.merriweather(
                textStyle: TextStyle(
                  fontSize: 25,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 30),
        
            // button
            CustomButton(text: "Get Started",
              color: Theme.of(context).colorScheme.secondary,
              icon: Icon(Icons.arrow_forward_rounded, color: Theme.of(context).colorScheme.primary,),
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