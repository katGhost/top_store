import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_store/components/button.dart';
import 'package:top_store/components/custom_button.dart';
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
        scrolledUnderElevation: 0,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                    style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                        fontSize: 22,
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
                        Icons.star_rate_sharp,
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

                      const SizedBox(width: 10),

                      Text(
                        '(19 reviews)',
                        style: GoogleFonts.merriweatherSans(
                          textStyle: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.normal,
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

                  const SizedBox(height: 10),
              
                  const Row(
                    children: [
                      SizesBtn(size: 'S',),
              
                      SizedBox(width: 15),
              
                      SizesBtn(size: 'M',),
              
                      SizedBox(width: 15),
              
                      SizesBtn(size: 'L',),
                    ],
                  ),
                  const SizedBox(height: 25),
                ],),
            ), 
          ),

          //Containerr ==> ROW =========>>> price and add to cart btn
        
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                border: Border.symmetric(vertical: BorderSide.none, horizontal: BorderSide(
                  color: Theme.of(context).colorScheme.tertiary,
                  width: 1.5,
                ),
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Price',
                        style: GoogleFonts.merriweatherSans(
                          textStyle: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        '\$ ${widget.clothes.price}',
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
                  CustomButton(
                    text: 'Add to Cart',
                    color: Theme.of(context).colorScheme.primary,
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: Theme.of(context).colorScheme.background,
                      size: 25,
                    ),
                    onTap: () {
                      //Navigator.pushNamed(context, 'routeName');
                    }
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}