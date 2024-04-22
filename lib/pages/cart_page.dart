import 'package:flutter/material.dart';
import 'package:top_store/models/clothing.dart';

class UserCart extends StatefulWidget {
  final Clothes clothes;

  const UserCart({super.key, required this.clothes});

  @override
  State<UserCart> createState() => _UserCartState();
}

class _UserCartState extends State<UserCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration (color: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset(
                    widget.clothes.imagePath,
                    height: 100,
                  ),
            
                  Column(
                    children: [
                      Row(
                        children: [
                          // title
                          Text(widget.clothes.name,
                          ),


                          // delete button
                        ],
                      ),

                      const Row(
                        // price

                        // two buttons ===========>> add and subtract
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}