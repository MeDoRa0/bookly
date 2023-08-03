import 'package:bookly/Features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //SafeArea is a widget that make the UI start under status bar (the bar that contain time and bettary , wifi of devaice)
      body: SafeArea(
        child: Book_Details_View_Body(),
      ),
    );
  }
}
