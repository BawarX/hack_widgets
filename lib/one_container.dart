import 'package:flutter/material.dart';

class One_container extends StatelessWidget {
  const One_container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(
                    'assets/qan.jpg',
                  ),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Hello"),
                  Text("Hello"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
