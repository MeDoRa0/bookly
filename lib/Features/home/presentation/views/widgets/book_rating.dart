import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  //we do this because we want the default mainaxisalignment to be start because we may change it in another screen
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 47),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          const Icon(
            size: 14,
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
          ),
          const SizedBox(
            width: 6.3,
          ),
          const Text(
            '4.8',
            style: Styles.textStyle16,
          ),
          const SizedBox(
            width: 5,
          ),
          Opacity(
            opacity: 0.5,
            child: Text(
              '(2450)',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
