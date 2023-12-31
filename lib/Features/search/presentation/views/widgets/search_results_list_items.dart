import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/constant.dart';
import 'package:bookly/core/model/book_model/book_model.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

//the list that will show in search result
class SearchResultsListItems extends StatelessWidget {
  const SearchResultsListItems({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //change the height to 105 after finish best seller list
      height: 125,
      //width: 70,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                  'https://thumbs.dreamstime.com/b/no-image-available-icon-177641087.jpg',
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  //show book title from api
                  child: Text(
                    bookModel.volumeInfo.title!,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                    //maxLines will limit how many lines the text can take
                    maxLines: 2,
                    //this will put ... at end of text if it overflow
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                //show first author in book author list from api
                Text(
                  bookModel.volumeInfo.authors![0],
                  style: Styles.textStyle14,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 47,
                      ),
                      child: BookRating(),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
