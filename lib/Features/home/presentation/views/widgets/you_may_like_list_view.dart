import 'package:bookly/Features/home/presentation/manger/simller_books_cubit/simller_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class YouMayAlsoLikeListView extends StatelessWidget {
  const YouMayAlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimllerBooksCubit, SimllerBooksState>(
      builder: (context, state) {
        if (state is SimllerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
              //scrolldirection will make the list scroll horizentally
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageUrl: state
                            .books[index].volumeInfo.imageLinks?.thumbnail ??
                        'https://thumbs.dreamstime.com/b/no-image-available-icon-177641087.jpg',
                  ),
                );
              },
            ),
          );
        } else if (state is SimllerBooksFailuer) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
