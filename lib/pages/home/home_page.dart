import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Deneme",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(width: 60),
                Text(
                  "Deneme",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(width: 60),
                Text(
                  "Deneme",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            SizedBox(height: 100),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(300),
              child: Image.asset("assets/images/logoPamir.png", width: 300),
            ),
            SizedBox(height: 70),
            Text("Pamir Açar", style: Theme.of(context).textTheme.displayLarge),
          ],
        ),
      ),
    );
  }
}
