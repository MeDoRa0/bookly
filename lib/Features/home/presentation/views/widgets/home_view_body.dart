import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';

//this is home screen body
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListview(),
      ],
    );
  }
}

class FeaturedBooksListview extends StatelessWidget {
  const FeaturedBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        //scrolldirection will make the list scroll horizentally
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
