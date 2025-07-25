import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:personal_website/app_routes.dart';
import 'package:personal_website/pages/home/glass.dart';
import 'package:personal_website/pages/home/home_page.dart';
import 'package:personal_website/pages/home/home_page_mobile.dart';
import 'package:personal_website/pages/responsive_gate.dart';
import 'package:personal_website/pages/responsive_layout.dart';
import 'dart:html' as html;


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileBody: HomePageM(), desktopBody: HomePage());
  }
}

class ProjectWidget extends StatelessWidget {
  final String language;
  final String image;
  final String name;
  final String content;
  final bool isApk;
  final bool isLogoPng;
  final double height;
  final String url;

  const ProjectWidget({
    super.key,
    required this.url,
    required this.language,
    required this.image,
    required this.name,
    required this.content,
    required this.isApk,
    required this.isLogoPng,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Glass(
      width: 300,
      height: 1000,
      wid: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 40),
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: isLogoPng
                      ? Image.asset(image)
                      : SvgPicture.asset(image),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 7),
            Text(
              content,
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height),
            Text("Language: $language", style: TextStyle(color: Colors.grey)),
            SizedBox(height: 5),
            Text(
              isApk ? "APK is available on:" : "Source code is available on:",
              style: const TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 13),
            GestureDetector(
              onTap:() => html.window.open(url, "_blank"),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: SvgPicture.asset("assets/images/github.svg", width: 100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
