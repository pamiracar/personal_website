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
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 100),
                ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.asset("assets/images/logoPamir.png", width: 300),
                ),
                SizedBox(height: 70),
                Text(
                  "Pamir Açar",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: 800,
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
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                    mainAxisSpacing: 100,
                    crossAxisSpacing: 50,
                    children: [
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 40,),
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Center(
                                  child: Image.asset("assets/images/dripLogo.png"),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Drip", style: Theme.of(context).textTheme.headlineMedium,),
                              SizedBox(height: 7,),
                              Text("Minimalist Daily Water Tracker", style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 800,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 800,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
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
      ),
    );
  }
}
