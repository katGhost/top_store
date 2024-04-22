import 'package:flutter/material.dart';

class SizesBtn extends StatelessWidget {

  final String size;
  final void Function()? onTap;


  const SizesBtn({super.key, required this.size, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
          size,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

