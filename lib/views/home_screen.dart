import 'package:farm_ui/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../controllers/home_controller.dart';
import 'farm_owner/farm_owner.dart';
import 'finance/finance.dart';
import 'labour/labour_widget.dart';
import 'search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final counter = context.read<HomeController>();
    return Consumer<HomeController>(
      builder: (BuildContext context, HomeController value, Widget? child) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            fixedColor: Constants.primary,
            unselectedItemColor: Colors.white,
            currentIndex: context.read<HomeController>().currentIndex,
            onTap: (value) {
              counter.updateIndex(value);
            },
            items: [
              const BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              const BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(Icons.person),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 5,
                      color: Constants.primary,
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Constants.primary,
                  ),
                ),
              ),
              const BottomNavigationBarItem(
                label: 'Market',
                icon: Icon(Icons.production_quantity_limits_sharp),
              ),
              const BottomNavigationBarItem(
                label: 'More',
                icon: Icon(Icons.more_vert),
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        height: 100,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                color: Constants.grey, shape: BoxShape.circle),
                            child: const Icon(Icons.shopping_bag_sharp),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                color: Constants.grey, shape: BoxShape.circle),
                            child: const Icon(Icons.notifications),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: SearchWidget(),
                ),
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
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
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
                              const FarmOwnerWidget(),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () => {
                                        counter.increaseCount(),
                                      },
                                      child: Text("increase"),
                                    ),
                                    Consumer<HomeController>(
                                      builder: (BuildContext context,
                                          HomeController value, Widget? child) {
                                        return Text(
                                          context
                                              .read<HomeController>()
                                              .count
                                              .toString(),
                                        );
                                      },
                                    ),
                                    GestureDetector(
                                      onTap: () => {
                                        counter.decreaseCount(),
                                      },
                                      child: Text("decrease"),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Consumer<HomeController>(
                                  builder: (BuildContext context,
                                      HomeController value, Widget? child) {
                                    return Text(
                                      context
                                          .read<HomeController>()
                                          .count
                                          .toString(),
                                    );
                                  },
                                ),
                              ),
                              LabourWidget(),
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
      },
    );
  }
}
