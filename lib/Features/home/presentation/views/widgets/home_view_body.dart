import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/images/app_images.dart';
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
            style: Styles.textStyle18,
          ),
        ),
        BestSellerItem(),
      ],
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //change the height to 105 after finish best seller list
      height: 100,
      width: 70,
      child: Row(
        children: [
          AspectRatio(
            //aspectRatio will change the width and heghit width/height
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    Assets.imagesTestImage,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
