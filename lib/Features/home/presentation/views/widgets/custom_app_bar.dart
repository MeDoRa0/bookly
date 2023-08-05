import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60, bottom: 47),
      child: Row(
        //logo in app bar
        children: [
          Image.asset(
            Assets.imagesLogo,
            height: 18,
          ),
          const Spacer(),
          //search icon in app bar
          IconButton(
            onPressed: () {
              //when press on search  icon user will go to search page
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
