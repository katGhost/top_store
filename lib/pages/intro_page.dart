import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(5, 5, 5, 0),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(height: 25),
        
            // name
            Text(
              "Top Store",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSerifDisplay(
                textStyle: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0
                )
              ),
            ),

            const SizedBox(height: 25),
        
            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/bag_.png'),
            ),
        
            // title
        
            // sub
        
            // button
          ],
        ),
      ),

    );
  }
}