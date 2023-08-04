import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'you_may_like_list_view.dart';

class YoumayAlsoLikeSection extends StatelessWidget {
  const YoumayAlsoLikeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          YouMayAlsoLikeListView(),
        ],
      ),
    );
  }
}
