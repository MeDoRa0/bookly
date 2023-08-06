import 'package:flutter/material.dart';

import 'widgets/search_view_body.dart';

// the search
class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //safearea will start the UI from under status bar
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}
