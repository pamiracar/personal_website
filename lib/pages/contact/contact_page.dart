import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/app_routes.dart';

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
                Get.toNamed(AppRoutes.DEV);
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
      body: Center(child: const Text("Contact desktop"),),
    );
  }
}
