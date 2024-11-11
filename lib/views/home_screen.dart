import 'dart:ui';

import 'package:farm_ui/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/farm_card_widget.dart';

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
            const Divider(),
            Expanded(
              child: DefaultTabController(
                length: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      constraints: const BoxConstraints(maxHeight: 150.0),
                      child: Material(
                        color: Colors.white,
                        child: TabBar(
                          tabAlignment: TabAlignment.start,
                          isScrollable: true,
                          indicatorColor: Constants.primary,
                          labelColor: Colors.black,
                          labelStyle: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          dividerColor: Colors.transparent,
                          unselectedLabelStyle: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15),
                          ),
                          tabs: const [
                            Tab(
                              text: 'Farm owner',
                            ),
                            Tab(
                              text: 'Inputs',
                            ),
                            Tab(
                              text: 'Services',
                            ),
                            Tab(
                              text: 'Buy',
                            ),
                            Tab(
                              text: 'Jobs',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Column(
                            children: [
                              const SizedBox(height: 30),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Juniper Diary farm",
                                                  style: GoogleFonts.mulish(
                                                    textStyle: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FarmCardWidget(
                                              name: "Labour",
                                              image: "assets/icons/labour.svg",
                                            ),
                                            FarmCardWidget(
                                              name: "Extension services",
                                              image: "assets/icons/labour.svg",
                                            ),
                                            FarmCardWidget(
                                              name: "Finances",
                                              image: "assets/icons/labour.svg",
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
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  const Icon(Icons.arrow_circle_down_outlined),
                                ],
                              ),
                            ],
                          ),
                          Container(),
                          Container(),
                          Container(),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
