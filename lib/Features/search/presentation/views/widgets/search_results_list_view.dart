import 'package:bookly/Features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:bookly/Features/search/presentation/manger/search_cubit/search_cubit.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_results_list_items.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 200),
                    Icon(
                      Icons.search,
                      size: MediaQuery.of(context).size.width * 0.25,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    Text(
                      'Please enter book name',
                      style: Styles.textStyle20.copyWith(
                        fontSize: 23,
                        color: Colors.white.withOpacity(0.7),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (state is SearchSuccess) {
          return ListView.builder(
            //this to show the full length of books in list
            itemCount: state.books.length,
            //this to remove the default padding of listview
            padding: EdgeInsets.zero,

            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SearchResultsListItems(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchFailuer) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
