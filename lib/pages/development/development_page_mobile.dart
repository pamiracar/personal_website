import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/pages/home/glass.dart';
import 'package:personal_website/pages/home/home_page_mobile.dart';

class DevPageM extends StatefulWidget {
  const DevPageM({super.key});

  @override
  State<DevPageM> createState() => _DevPageMState();
}

class _DevPageMState extends State<DevPageM> {
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
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  "My Interests",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                SizedBox(height: 40),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Column(
                        children: [
                          Image.network(
                            "https://media.formula1.com/image/upload/t_16by9South/c_lfill,w_3392/q_auto/v1740000000/fom-website/2025/Goodwood%20Festival%20of%20Speed/GettyImages-2224405278.webp",
                            fit: BoxFit.cover,
                            height: 300,
                            width: 300,
                          ),
                          Image.network(
                            'https://sportscar365.com/wp-content/uploads/2023/07/M23_4946_fine.jpg',
                            fit: BoxFit.cover,
                            height: 300,
                            width: 300,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Glass(
                          wid: Center(
                            child: Text(
                              "Motorsports",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.surface,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          height: 80,
                          width: 200,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 60,),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Column(
                        children: [
                          Image.network(
                            "https://images.pexels.com/photos/577585/pexels-photo-577585.jpeg?cs=srgb&dl=pexels-kevin-ku-92347-577585.jpg&fm=jpg",
                            fit: BoxFit.cover,
                            height: 300,
                            width: 300,
                          ),
                          Image.network(
                            'https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg?cs=srgb&dl=pexels-luis-gomes-166706-546819.jpg&fm=jpg',
                            fit: BoxFit.cover,
                            height: 300,
                            width: 300,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Glass(
                          wid: Center(
                            child: Text(
                              "Programming",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          height: 80,
                          width: 200,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 60,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
