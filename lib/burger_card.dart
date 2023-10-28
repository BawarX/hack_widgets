import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class burger_card extends StatelessWidget {
  const burger_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.9),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/burger.png',
              height: 150,
            ),
            const Text(
              "Hot Burger",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Text("Taste Our Hot Burger"),
            const Row(
              children: [
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.orange,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$10",
                  style: TextStyle(
                    color: Color.fromARGB(255, 173, 109, 13),
                  ),
                ),
                Icon(
                  Icons.favorite_outline,
                  color: Color.fromARGB(255, 173, 109, 13),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
