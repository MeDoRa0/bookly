import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';

class Book_Details_View_Body extends StatelessWidget {
  const Book_Details_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}

