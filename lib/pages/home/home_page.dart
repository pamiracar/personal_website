import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:personal_website/app_routes.dart';
import 'package:personal_website/pages/home/home.dart';
import 'package:personal_website/pages/home/home_page_mobile.dart';
import 'package:personal_website/pages/responsive_gate.dart';
import 'dart:html' as html;


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
            GestureDetector(
              onTap: () {
                Get.offAndToNamed(AppRoutes.HO);
              },
              child: Text(
                "Home",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(width: 60),
            GestureDetector(
              onTap: () {
                Get.offAndToNamed(AppRoutes.DEV);
              },
              child: Text(
                "Interest",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(width: 60),
            GestureDetector(
              onTap: () {
                Get.offAndToNamed(AppRoutes.CON);
              },
              child: Text(
                "Contact",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
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
                  SizedBox(height: 30),
                  const Text(
                    '"Talk is cheap, show me the code!"',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  const Text(
                    "~ Linus Torvalds",
                    style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 50),
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
                      "Hi, I am a highschool student in Izmir Ataturk High School who loves Phonk, Cars, Formula 1 (Ferrari) and Programming. I wrote my first line of code in 2022 with Python. Now, I am a Jr. Flutter Developer since 1 July 2025, I started Mobile Development in January 2025 with Native Android Development (Kotlin). You can see my all sertificates at my Linkedin and my apps at Github.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 100),
                  Text(
                    "My Skills",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.network(
                        "https://www.vectorlogo.zone/logos/python/python-icon.svg",
                        width: 80,
                      ),
                      SizedBox(width: 20),
                      SvgPicture.network(
                        "https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg",
                        width: 80,
                      ),
                      SizedBox(width: 20),
                      SvgPicture.network(
                        "https://www.vectorlogo.zone/logos/sqlite/sqlite-ar21.svg",
                        width: 160,
                      ),
                      SizedBox(width: 20),
                      SvgPicture.network(
                        "https://www.vectorlogo.zone/logos/supabase/supabase-icon.svg",
                        width: 80,
                      ),
                      SizedBox(width: 20),
                      SvgPicture.network(
                        "https://upload.wikimedia.org/wikipedia/commons/3/31/Apple_logo_white.svg",
                        width: 80,
                      ),


                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.network(
                        "https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg",
                        width: 80,
                      ),
                      SizedBox(width: 20),
                      SvgPicture.network(
                        "https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg",
                        width: 80,
                      ),
                      SizedBox(width: 20),
                      SvgPicture.network(
                        "https://www.vectorlogo.zone/logos/kotlinlang/kotlinlang-icon.svg",
                        width: 80,
                      ),
                      SizedBox(width: 20),
                      SvgPicture.network(
                        "https://www.vectorlogo.zone/logos/android/android-icon.svg",
                        width: 80,
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  Text(
                    "My Projects",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SizedBox(height: 40),
                  const Text(
                    "When I done a new app, you can learn it from Linkedin",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 15),
                  const Text("Last Update: 07 July 2025"),
                  SizedBox(height: 15),
                  SizedBox(
                    width: 650,
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      childAspectRatio: 0.58,
                      crossAxisCount: 2,
                      mainAxisSpacing: 50,
                      crossAxisSpacing: 50,
                      children: [
                        ProjectWidget(
                          language: "Dart",
                          image: "assets/images/dripLogo.png",
                          name: "Drip",
                          content: "Minimalist Daily Water Tracker",
                          isApk: true,
                          isLogoPng: true,
                          height: 75, url: 'https://github.com/pamiracar/drip/releases',
                        ),
                        ProjectWidget(
                          language: "Dart",
                          image: "assets/images/flutterLogo.png",
                          name: "Task-Riot",
                          content: "Minimalist Designed To-Do App",
                          isApk: false,
                          isLogoPng: true,
                          height: 75, url: 'https://github.com/pamiracar/Task-Riot',
                        ),
                        ProjectWidget(
                          language: "Dart",
                          image: "assets/images/flutterLogo.png",
                          name: "Skycast",
                          content:
                              "Open Source Weather App Developed with OpenWeather",
                          isApk: false,
                          isLogoPng: true,
                          height: 56, url: 'https://github.com/pamiracar/SkyCast_Weather_App',
                        ),
                        ProjectWidget(
                          language: "Python",
                          image: "assets/images/pythonLogo.svg",
                          name: "Currency API",
                          content: "Daily currency API",
                          isApk: false,
                          isLogoPng: false,
                          height: 75, url: 'https://github.com/pamiracar/currency_api',
                        ),
                        ProjectWidget(
                          language: "Kotlin",
                          image: "assets/images/androidLogo.svg",
                          name: "Tod-Ap",
                          content: "To-Do App with Native Android",
                          isApk: false,
                          isLogoPng: false,
                          height: 75, url: 'https://github.com/pamiracar/Tod-Ap_--_A_Todo_App',
                        ),
                        ProjectWidget(
                          language: "Kotlin",
                          image: "assets/images/androidLogo.svg",
                          name: "Picto",
                          content:
                              "Photo Sharing App with Firebase. My First App (Worst UI)",
                          isApk: false,
                          isLogoPng: false,
                          height: 50, url: 'https://github.com/pamiracar/Picto---Firebase_ile_Fotograf_Paylasma',
                        ),
                        ProjectWidget(
                          language: "Python",
                          image: "assets/images/pythonLogo.svg",
                          name: "Ottoman Leaders and Wars",
                          content:
                              "My first saved and official programming product. It was created for a competition by me and one of my friend",
                          isApk: false,
                          isLogoPng: false,
                          height: 10, url: 'https://github.com/pamiracar/OsmanliPadisahlariVeSavaslari---Tubitak',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
