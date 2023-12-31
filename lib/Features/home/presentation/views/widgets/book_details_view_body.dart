import 'package:bookly/core/model/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:flutter/material.dart';
import 'custom_book_details_appbar.dart';
import 'you_may_also_like_section.dart';

class Book_Details_View_Body extends StatelessWidget {
  const Book_Details_View_Body({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    //this to make screen scrollable we used it because we used expanded widget
    return CustomScrollView(
      slivers: [
        //SliverFillRemaining it used to fill the rest area in customscrollview
        SliverFillRemaining(
          //this to make inner iteam unscrollable because the whole screen already scrollable
          hasScrollBody: false,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomBookDetailsAppBar(),
              ),
              //this contain image of book, its name , author, and rating
              BookDetailsSection(
                bookModel: bookModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              //this contain you may also like componant
              const YoumayAlsoLikeSection(),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ],
    );
  }
}
