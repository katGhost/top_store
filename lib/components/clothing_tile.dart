import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_store/models/clothing.dart';

class ClothingTile extends StatelessWidget {
  final Clothes clothes;

  const ClothingTile({super.key, required this.clothes});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(left: 20.0),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // image
          Image.asset(clothes.imagePath,
          height: 140,
          ),

        const SizedBox(height:10),

          // item title
          Text(clothes.name,
          style: GoogleFonts.merriweather(
            textStyle: TextStyle(
              fontSize: 18,
              color: Colors.grey[900],
              fontWeight: FontWeight.bold,
            ),
          ),),
          // item price +  item rating
          Container(
            child: Text('\$ ${clothes.price}',
            style: GoogleFonts.merriweather(
              textStyle: TextStyle(
                color: Colors.grey[900],
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),),
        ],
      ),
    );
  }
}