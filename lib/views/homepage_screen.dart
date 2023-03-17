import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Weather App"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.light_mode_outlined),
            color: Vx.gray600,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
            color: Vx.gray600,
          ),
        ],
      ),
    );
  }
}
