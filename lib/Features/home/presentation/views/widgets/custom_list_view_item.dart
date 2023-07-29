//the item in listview in home screen
import 'package:bookly/images/app_images.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //asspectRatio will change the width and heghit width/height
      aspectRatio: 2.7 / 4,
      child: Container(
        //I disable the code below because i use AspectRatio widget instead
        //MediaQuery will adjust the height and width of container in term of screen dimensions
        //height: MediaQuery.of(context).size.height * .25,
        //width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.imagesTestImage,
            ),
          ),
        ),
      ),
    );
  }
}
