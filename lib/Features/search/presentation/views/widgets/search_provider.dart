//this class contain data i provide

import 'package:bookly/core/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  //_ will make the variable privte
  BookModel? _bookModel;
  String? cityName;
  set bookData(BookModel? book) {
    _bookModel = book;
    //this statment tell any code use weather data that this data is updated
    notifyListeners();
  }

  BookModel? get bookData => _bookModel;
}
