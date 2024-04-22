import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_store/models/clothing.dart';

class ClothingTile extends StatelessWidget {
  final Clothes clothes;
  final void Function()? onTap;

  const ClothingTile({super.key, required this.clothes, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.tertiary,
              offset: const Offset(5.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        margin: const EdgeInsets.only(left: 20.0),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // image
            Image.asset(
              clothes.imagePath,
              height: 140,
            ),

            const SizedBox(height: 10),

            // item title
            Text(
              clothes.name,
              style: GoogleFonts.merriweather(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // item price +  item rating
            Container(
              child: Text(
                '\$ ${clothes.price}',
                style: GoogleFonts.merriweather(
                  textStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
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
