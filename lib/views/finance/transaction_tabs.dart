import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class TransactionTabs extends StatelessWidget {
  const TransactionTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 160,
          decoration: const BoxDecoration(
            color: Constants.brownSolidBG,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.add_circle),
              Text(
                "Add Expense",
                style: GoogleFonts.mulish(
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 50,
          width: 160,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.add_circle),
              Text(
                "Add Revenue",
                style: GoogleFonts.mulish(
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
