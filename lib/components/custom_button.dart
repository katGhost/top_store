import 'package:flutter/material.dart';

class SizesBtn extends StatelessWidget {

  final String size;

  const SizesBtn({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

