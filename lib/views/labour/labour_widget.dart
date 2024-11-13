import 'package:farm_ui/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LabourWidget extends StatefulWidget {
  const LabourWidget({super.key});

  @override
  State<LabourWidget> createState() => _LabourWidgetState();
}

class _LabourWidgetState extends State<LabourWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Farm Staff",
                style: GoogleFonts.mulish(
                  textStyle: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            //todo: add list view
            Container(
              height: 200,
              width: 250,
              decoration: const BoxDecoration(
                color: Constants.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                    width: 250,
                    child: Image.asset(
                      "assets/work.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Michael Mungu",
                            style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "Manager",
                            style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Icon(Icons.arrow_circle_up)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 60,
              decoration: const BoxDecoration(
                  color: Constants.primary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Add Staff",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: Constants.blackBG,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.arrow_circle_right_sharp,
                      color: Constants.blackBG)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
