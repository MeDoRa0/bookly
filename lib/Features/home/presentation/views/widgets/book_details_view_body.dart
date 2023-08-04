import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_appbar.dart';
import 'you_may_like_list_view.dart';

class Book_Details_View_Body extends StatelessWidget {
  const Book_Details_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQuery to adjust the width of itema realtive to width of device
    var width = MediaQuery.of(context).size.width;
    //this to make screen scrollable we used it because we used expanded widget
    return CustomScrollView(
      slivers: [
        //SliverFillRemaining it used to fill the rest area in customscrollview
        SliverFillRemaining(
          //this to make inner iteam unscrollbel because the whole screen already scrollable
          hasScrollBody: false,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomBookDetailsAppBar(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.25),
                child: const CustomBookImage(),
              ),
              const SizedBox(
                height: 43,
              ),
              Text(
                'The Jungle Book',
                style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 6,
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  'Rudyard Kipling',
                  style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              //we use bookrating widget and changed its mainaxisalignment to be in center
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 37,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 37),
                child: BooksAction(),
              ),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              //wrap text with Align widget to adjust its postion in screen
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const YouMayAlsoLikeListView(),
            ],
          ),
        ),
      ],
    );
  }
}
