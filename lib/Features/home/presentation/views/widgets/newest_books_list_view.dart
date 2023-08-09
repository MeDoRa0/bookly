import 'package:bookly/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_error_widget.dart';
import 'newest_books_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        //if the state is success ?
        if (state is NewestBooksSuccess) {
          // build the list view
          return ListView.builder(
            //dont scroll because we use customscroll view
            physics: const NeverScrollableScrollPhysics(),
            //this to remove the default padding of listview
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: NewestListItem(),
              );
            },
          );
          //if the state is failuer
        } else if (state is NewestBooksFailuer) {
          //return show the error message
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          // otherwise show loading indicator
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
