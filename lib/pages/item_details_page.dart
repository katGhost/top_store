import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_store/models/clothing.dart';

class ItemDetails extends StatefulWidget {
  final Clothes clothes;

  const ItemDetails({super.key, required this.clothes});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // Image and the title
                Image.asset(
                  widget.clothes.imagePath,
                  height: 340,
                ),

                const SizedBox(height: 15),

                //title
                Text(
                  widget.clothes.name,
                  style: GoogleFonts.merriweatherSans(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                // rating
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),

                    Text(
                      '${widget.clothes.rating}/5',
                      style: GoogleFonts.merriweatherSans(
                        textStyle: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // description
                Text(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit Soluta voluptatibus fuga expedita deserunt quam accusantiumtempore laboriosam temporibus iusto deleniti magni est Inventore',    
                  style: GoogleFonts.merriweatherSans(
                    textStyle: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0
                    ),
                  ),
                ),

                const SizedBox(height: 25),
                
                // size variation btns
                Text(
                  'Choose size',
                  style: GoogleFonts.merriweatherSans(
                    textStyle: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0
                    ),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary, 
                          width: 1.0, 
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Text(
                        'S',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                )

                //ROW =========>>> price and add to cart btn

              ],
            ) 
          )
        ],
      ),
    );
  }
}