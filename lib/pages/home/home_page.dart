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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Deneme", style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(width: 60),
            Text("Deneme", style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(width: 60),
            Text("Deneme", style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            children: [
              SizedBox(height: 100),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(300),
                child: Image.asset("assets/images/logoPamir.png", width: 300),
              ),
              SizedBox(height: 70),
              Text(
                "Pamir Açar",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 40),
              SizedBox(
                width: 600,
                child: Text(
                  "Hi, I am a highschool student in Izmir Ataturk High School.I started programming in 2022 with Python. Now, I am a Jr. Flutter Developer since 1 July 2025, I started Mobile Development in January 2025 with Native Android Development (Kotlin). You can see my all sertificates at my Linkedin.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 100),
              Text(
                "My Projects",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 650,
                height: 400, // GridView yüksekliği
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 100,
                  crossAxisSpacing: 50,
                  children: [
                    Container(
                      width: 300,
                      height: 800,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
