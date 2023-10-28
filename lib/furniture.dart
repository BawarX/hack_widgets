import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CrouselPackage extends StatefulWidget {
  const CrouselPackage({super.key});

  @override
  State<CrouselPackage> createState() => _CrouselPackageState();
}

class _CrouselPackageState extends State<CrouselPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 244, 242),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 244, 242),
        leading: const Icon(Icons.search),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 70,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 245, 244, 244),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 3,
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        size: 30,
                        color: Color.fromARGB(255, 157, 173, 110),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: '25',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color.fromARGB(255, 163, 155, 149),
                      ),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(10, -30),
                        child: const Text(
                          'oC',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(
                              255,
                              138,
                              130,
                              123,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // child: Text(
              //   '25',
              //   style: TextStyle(
              //     fontSize: 50,
              //     color: Color.fromARGB(255, 163, 155, 149),
              //   ),
              // ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Hello, Bravo!',
                style: TextStyle(
                  color: Color.fromARGB(255, 85, 82, 75),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  letterSpacing: 1,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Welcome to your smart home.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 163, 155, 149),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "Rooms",
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 163, 155, 149),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.5,
                height: 300.0,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/qan.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      width: 150,
                      height: 150,
                      child: const Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Bedroom",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "1/10",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
