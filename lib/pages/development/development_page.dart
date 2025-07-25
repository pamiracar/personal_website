import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/app_routes.dart';
import 'package:personal_website/pages/home/glass.dart';

class DevPage extends StatefulWidget {
  const DevPage({super.key});

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
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
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    "My Interests",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(height: 70),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                            child: Image.network(
                              "https://media.formula1.com/image/upload/t_16by9South/c_lfill,w_3392/q_auto/v1740000000/fom-website/2025/Goodwood%20Festival%20of%20Speed/GettyImages-2224405278.webp",
                              height: 300,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            child: Image.network(
                              "https://sportscar365.com/wp-content/uploads/2023/07/M23_4946_fine.jpg",
                              height: 300,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Glass(
                            wid: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Motorsports",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.surface,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text("I am a huge fan of Motorsports. I support FERRARI in Formula 1, FERRARI in WEC, FERRARI in GT Series. So we can say that I am a TIFOSI.", textAlign: TextAlign.center, style: TextStyle(color: Theme.of(context).colorScheme.surface, fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                            height: 170,
                            width: 500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                            child: Image.network(
                              "https://images.pexels.com/photos/577585/pexels-photo-577585.jpeg?cs=srgb&dl=pexels-kevin-ku-92347-577585.jpg&fm=jpg",
                              height: 370,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            child: Image.network(
                              "https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?cs=srgb&dl=pexels-luis-gomes-166706-546819.jpg&fm=jpg",
                              height: 370,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Glass(
                            wid: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Programming",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text("I was wanted to learn programming since I was little. I started my programming journey with Python in 2022. I started to learn Native Android Mobile Development in January 2025. I learned Flutter completely in July 2025. Now I am a Jr. Flutter Developer.", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                            height: 200,
                            width: 500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 100,),
                  
                ],
              ),
            ),
          ),
        ),
    );

  }
}
