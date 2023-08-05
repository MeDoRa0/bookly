import 'package:flutter/material.dart';

import 'search_results_list_items.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //this to remove the default padding of listview
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: SearchResultsListItems(),
        );
      },
    );
  }
}
