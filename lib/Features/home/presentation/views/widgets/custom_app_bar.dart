import 'package:bookly/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 5, top: 50, bottom: 10),
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
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 25,
              ))
        ],
      ),
    );
  }
}
