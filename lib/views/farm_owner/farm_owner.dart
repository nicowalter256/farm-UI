import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/constants.dart';
import '../../widgets/farm_card_widget.dart';
import '../finance/finance.dart';

class FarmOwnerWidget extends StatelessWidget {
  const FarmOwnerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 250,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Constants.brownBG,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Juniper Diary farm",
                              style: GoogleFonts.mulish(
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Kasese. 230 Acres. 12 employees",
                              style: GoogleFonts.mulish(
                                textStyle: const TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.add_circle,
                              color: Constants.grey,
                              size: 40,
                            ),
                            Text(
                              "Add Farm",
                              style: GoogleFonts.mulish(
                                textStyle: const TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Constants.brownSolidBG,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const FarmCardWidget(
                          name: "Labour",
                          image: "assets/icons/Labour-icon.png",
                        ),
                        const FarmCardWidget(
                          name: "Extension services",
                          image: "assets/icons/Livestock.png",
                        ),
                        GestureDetector(
                          onTap: () => {
                            // Get.to(const FinanceWidget()),
                          },
                          child: const FarmCardWidget(
                            name: "Finances",
                            image: "assets/icons/Finances-icon.png",
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Feasts services",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.arrow_circle_down_outlined),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 200,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                        width: 200,
                        child: Image.asset(
                          "assets/farm_management.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Farm management",
                            style: GoogleFonts.mulish(
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Icon(Icons.arrow_circle_right_sharp)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 200,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                        width: 200,
                        child: Image.asset(
                          "assets/farm_management.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Business development",
                            style: GoogleFonts.mulish(
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Icon(Icons.arrow_circle_right_sharp)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Container(
              height: 180,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Constants.secondary,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Farm Tips",
                          style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Icon(Icons.add_box, color: Constants.deepBrownBG),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
                      style: GoogleFonts.mulish(
                        textStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
