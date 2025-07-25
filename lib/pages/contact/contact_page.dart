import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:personal_website/app_routes.dart';
import 'package:personal_website/pages/home/glass.dart';
import 'dart:html' as html;

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
                "Interests",
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Text(
                  "Contact",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: 70),
                Glass(
                  wid: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Glass(
                          height: 100,
                          width: 400,
                          wid: SvgPicture.network(
                            "https://www.vectorlogo.zone/logos/google/google-ar21.svg",
                            width: 200,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "pamiracar.dev@gmail.com",
                          style: TextStyle(color: Colors.grey, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  height: 230,
                  width: 500,
                ),
                SizedBox(height: 50),
                Glass(
                  wid: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Glass(
                          height: 100,
                          width: 400,
                          wid: Center(
                            child: SvgPicture.asset(
                              "assets/images/github.svg",
                              width: 180,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            html.window.open(
                              "https://github.com/pamiracar",
                              "_blank",
                            );
                          },
                          child: const Text(
                            "Press here",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 250,
                  width: 500,
                ),
                SizedBox(height: 50),
                Glass(
                  wid: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Glass(
                          height: 100,
                          width: 400,
                          wid: Center(
                            child: SvgPicture.network(
                              "https://www.vectorlogo.zone/logos/linkedin/linkedin-ar21.svg",
                              width: 300,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            html.window.open(
                              "https://www.linkedin.com/in/pamir-açar-146485332",
                              "_blank",
                            );
                          },
                          child: const Text(
                            "Press here",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 250,
                  width: 500,
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
