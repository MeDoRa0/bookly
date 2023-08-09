import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class YouMayAlsoLikeListView extends StatelessWidget {
  const YouMayAlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        //scrolldirection will make the list scroll horizentally
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(imageUrl: 'https://images.pexels.com/photos/51342/books-education-school-literature-51342.jpeg?cs=srgb&dl=book-stack-books-education-51342.jpg&fm=jpg',),
          );
        },
      ),
    );
  }
}
