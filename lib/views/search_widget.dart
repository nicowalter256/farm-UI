import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        // showSearch(
        //   context: context,
        //   delegate: ProductSearchDelegate(),
        // );
      },
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 9),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
                child: Text(
              'Search feasts farm app',
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.fade,
              style: GoogleFonts.mulish(
                textStyle: const TextStyle(fontWeight: FontWeight.normal),
              ),
            )),
            const Icon(
              Icons.search_sharp,
              size: 30,
              color: Constants.blackBG,
            ),
          ],
        ),
      ),
    );
  }
}
