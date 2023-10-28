import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class container_text_below_widget extends StatelessWidget {
  const container_text_below_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 100,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[100],
            boxShadow: const [BoxShadow(color: Colors.grey, offset: Offset.zero, blurRadius: 20)],
          ),
          child: Image.asset('assets/100.jpg', width: 50),
        ),
        const SizedBox(height: 5),
        const Text(
          "Map",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
