import 'package:bookly/Features/search/presentation/manger/search_cubit/search_cubit.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_search_textfield.dart';
import 'search_results_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextfield(),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Search Results :',
            style: Styles.textStyle16,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(child: BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              return const SearchResultsListView();
            },
          )),
        ],
      ),
    );
  }
}
