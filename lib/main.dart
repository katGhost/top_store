import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:top_store/pages/home_page.dart';
import 'package:top_store/themes/theme_provider.dart';

import 'pages/intro_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => ThemeProvider(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      // routing system
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}