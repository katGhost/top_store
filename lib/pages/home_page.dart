import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:top_store/components/button.dart';
import 'package:top_store/components/clothing_tile.dart';
import 'package:top_store/models/clothing.dart';
import 'package:top_store/pages/cart_page.dart';
import 'package:top_store/pages/item_details_page.dart';
import 'package:top_store/themes/theme_provider.dart';

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
      price: '35.99',
      imagePath: 'lib/images/tee.jpg' ,
      rating: '4.5',
    ),
    // regular tshirt
    Clothes(
      name: 'Branded',
      price: '29.00',
      imagePath: 'lib/images/ssrc.jpg' ,
      rating: '4.0',
    ),
    // some tshirt
    Clothes(
      name: 'Regular Fit Slogan',
      price: '18.89',
      imagePath: 'lib/images/greco.jpg' ,
      rating: '3.8',
    ),
    Clothes(
      name: 'Branded',
      price: '43.00',
      imagePath: 'lib/images/chucky.jpg' ,
      rating: '4.9',
    ),
  ];

  // go to item details page
  void navigateToItemDetails(int index){
    // ignore: prefer_const_constructors
    Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetails(
          clothes: clothingMenu[index],
        ),
      ),
    );
  }

  void navigateToCart(int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => UserCart(
        clothes: clothingMenu[index], 
      ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
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
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0
                      ),
                    ),
                  ),
          
                  Icon(
                    Icons.notifications_none_rounded,
                    color: Theme.of(context).colorScheme.primary,
                    size: 28,
                  )
                ],
              ),

              // Banner
              Container(
                decoration: BoxDecoration (
                  gradient: const LinearGradient(colors:[ Colors.amber, Colors.purpleAccent],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.tertiary,
                      offset: const Offset(
                        5.0,
                        5.0
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(
                        0.0,
                        0.0
                      ),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
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
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        //redeem button
                        CustomButton(text: 'get now!',
                          color: Colors.amber[700],
                          icon: Icon(
                            Icons.card_giftcard_rounded,
                            size: 24,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          onTap: (){
                          })
                      ],
                    ),

                    // side image
                    Image.asset('lib/images/bag_.png',
                     height: 100,
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
                    hintText: "search here...",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
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
                      color: Theme.of(context).colorScheme.primary,
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
                  itemBuilder: (context, index) => ClothingTile(
                    clothes: clothingMenu[index],
                    onTap: () => navigateToItemDetails(index),
                  ),
                ),
              ),

               const SizedBox(height: 15,),

              // cart button, opens cart on click
               Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // back button, for now
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/intropage');
                          
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.arrow_back_rounded,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),

                    // cart button
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        //onTap: () => navigateToCart(),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.shopping_bag_outlined,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),

                    // light mode dark mode button
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: (){
                          // toggles the theme (dark/light)
                          Provider.of<ThemeProvider>(context, listen: false).toggleThemeMode();
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.sunny,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ],),
               ),
            ],
          ),
        ),
    );
  }
}