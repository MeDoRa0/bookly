import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

//this is home screen body
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: FeaturedBooksListview(),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        )
      ],
    );
  }
}
