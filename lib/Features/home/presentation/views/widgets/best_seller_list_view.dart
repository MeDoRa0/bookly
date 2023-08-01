import 'package:flutter/material.dart';

import 'best_seller_item.dart';

class BestsellerListview extends StatelessWidget {
  const BestsellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //dont scroll because we use customscroll view
      physics: const NeverScrollableScrollPhysics(),
      //this to remove the default padding of listview
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerItem(),
        );
      },
    );
  }
}
