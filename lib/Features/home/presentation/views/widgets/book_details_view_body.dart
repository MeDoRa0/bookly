import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';

class Book_Details_View_Body extends StatelessWidget {
  const Book_Details_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQuery to adjust the width of itema realtive to width of device
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.18),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
