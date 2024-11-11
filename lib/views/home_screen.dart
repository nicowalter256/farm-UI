import 'package:farm_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/logo.png'),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: Constants.grey, shape: BoxShape.circle),
                        child: const Icon(Icons.notifications),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: Constants.grey, shape: BoxShape.circle),
                        child: const Icon(Icons.shopping_bag),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Divider()
          ],
        ),
      ),
    );
  }
}
