import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/constants.dart';

class FarmCardWidget extends StatelessWidget {
  final String name, image;
  const FarmCardWidget({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            image,
            height: 100,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: GoogleFonts.mulish(
            textStyle: const TextStyle(
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }
}
