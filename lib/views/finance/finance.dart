import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';
import 'finance_card.dart';
import 'transaction_tabs.dart';

class FinanceWidget extends StatefulWidget {
  const FinanceWidget({super.key});

  @override
  State<FinanceWidget> createState() => _FinanceWidgetState();
}

class _FinanceWidgetState extends State<FinanceWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const FinanceCard(),
            const TransactionTabs(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Expenses",
                  style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  width: 160,
                  decoration: const BoxDecoration(
                      color: Constants.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Filter by date",
                        style: GoogleFonts.mulish(
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Icon(Icons.arrow_downward_sharp)
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 60,
              decoration: const BoxDecoration(
                  color: Constants.blackBG,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Generate Income Statement",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: Constants.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.arrow_circle_right_sharp,
                      color: Constants.primary)
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Expenses",
                  style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 40,
                  width: 160,
                  decoration: const BoxDecoration(
                      color: Constants.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Filter by date",
                        style: GoogleFonts.mulish(
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Icon(Icons.arrow_downward_sharp)
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 130,
                  width: 200,
                  decoration: const BoxDecoration(
                      color: Constants.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "3,000,000",
                        style: GoogleFonts.mulish(
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Milk sales",
                        style: GoogleFonts.mulish(
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
