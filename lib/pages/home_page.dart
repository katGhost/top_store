import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_store/components/button.dart';
import 'package:top_store/components/clothing_tile.dart';
import 'package:top_store/models/clothing.dart';
import 'package:top_store/themes/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // clothing menu list
  List clothingMenu = [
    Clothes(
      name: 'Regular Tee',
      price: '13.99',
      imagePath: 'lib/images/tee.jpg' ,
      rating: '4.0',
    ),
    // regular tshirt
    Clothes(
      name: 'Branded',
      price: '13.99',
      imagePath: 'lib/images/ssrc.jpg' ,
      rating: '4.0',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Icon(
          Icons.menu_rounded,
          color: Colors.grey[900],
        ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discover",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.merriweatherSans(
                      textStyle: TextStyle(
                        fontSize: 28,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0
                      ),
                    ),
                  ),
          
                  Icon(
                    Icons.notification_important_outlined,
                    color: Colors.grey[900],
                    size: 25,
                  )
                ],
              ),

              // Banner
              Container(
                decoration: BoxDecoration (color: primaryColor,
                borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "25% Off Deals",
                          style: GoogleFonts.merriweather(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        //redeem button
                        CustomButton(text: "Redeem",
                        icon: Icons.arrow_forward_rounded,
                        color: Colors.deepOrange[400],
                         onTap: (){})
                      ],
                    ),

                    // side image
                    Image.asset('lib/images/bag_.png',
                     height: 100,
                      color: Colors.deepOrangeAccent,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              //search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "search anything...",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.black26),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.black26),
                    )
                  ),
                ), 
              ),

              const SizedBox(height: 20),

              // Categories filter buttons =========> Row Widget
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Menu",
                  style: GoogleFonts.merriweatherSans(
                    textStyle: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                 ),),
              ),

              const SizedBox(height: 10),

              //Dashboard, grid form
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: clothingMenu.length,
                  itemBuilder: (context, index) => ClothingTile(clothes: clothingMenu[index]),
                ),
              ),

               const SizedBox(height: 10,),

               Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 25,
                    ),

                   Text(
                  "Go to Cart",
                  style: GoogleFonts.merriweatherSans(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 18.0,
                    ),
                 ),),
                    
                  ],
                ),
               ),
            ],
          ),
        ),
    );
  }
}