import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:personal_website/app_routes.dart';
import 'package:personal_website/pages/home/glass.dart';
import 'package:personal_website/pages/home/home_page_mobile.dart';
import 'dart:html' as html;


class ContactPageM extends StatefulWidget {
  const ContactPageM({super.key});

  @override
  State<ContactPageM> createState() => _ContactPageMState();
}

class _ContactPageMState extends State<ContactPageM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Pamir Açar",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      drawer: const Navigationawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Text(
                  "Contact",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                SizedBox(height: 40),
                Glass(
                  wid: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Glass(
                          height: 100,
                          width: 300,
                          wid: SvgPicture.network(
                            "https://www.vectorlogo.zone/logos/google/google-ar21.svg",
                            width: 60,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "pamiracar.dev@gmail.com",
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  height: 200,
                  width: 300,
                ),
                SizedBox(height: 30),
                Glass(
                  wid: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Glass(
                          height: 100,
                          width: 300,
                          wid: Center(
                            child: SvgPicture.asset(
                              "assets/images/github.svg",
                              width: 120,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            html.window.open(
                              "https://github.com/pamiracar",
                              "_blank",
                            );
                          },
                          child: const Text(
                            "Press here",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 200,
                  width: 300,
                ),
                SizedBox(height: 30),
                Glass(
                  wid: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Glass(
                          height: 100,
                          width: 300,
                          wid: Center(
                            child: SvgPicture.network(
                              "https://www.vectorlogo.zone/logos/linkedin/linkedin-ar21.svg",
                              width: 150,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            html.window.open(
                              "https://www.linkedin.com/in/pamir-açar-146485332",
                              "_blank",
                            );
                          },
                          child: const Text(
                            "Press here",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 200,
                  width: 300,
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
