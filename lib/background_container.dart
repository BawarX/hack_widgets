import 'package:flutter/material.dart';

class background_container_over extends StatelessWidget {
  const background_container_over({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 188, 174, 190),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 10,
              bottom: 150,
            ),
            child: Text(
              "Hello this is test",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 550,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )),
          )
        ],
      ),
    );
  }
}
