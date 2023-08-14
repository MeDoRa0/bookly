import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_search_textfield.dart';
import 'search_results_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextfield(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Search Results :',
            style: Styles.textStyle16,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: SearchResultsListView(
          )),
        ],
      ),
    );
  }
}
