import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final color;
  final icon;
  final void Function()? onTap;

  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
            style: GoogleFonts.merriweatherSans(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.0
                      ),
                    ),
            ),
      
            const SizedBox(width: 15),
      
            Icon(icon),
          ],
        ),
      ),
    );
  }
}