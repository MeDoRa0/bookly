part of 'simller_books_cubit.dart';

sealed class SimllerBooksState extends Equatable {
  const SimllerBooksState();

  @override
  List<Object> get props => [];
}

final class SimllerBooksInitial extends SimllerBooksState {}

final class SimllerBooksLoading extends SimllerBooksState {}

final class SimllerBooksSuccess extends SimllerBooksState {
  final List<BookModel> books;

  const SimllerBooksSuccess(this.books);
}

final class SimllerBooksFailuer extends SimllerBooksState {
  final String errorMessage;

  const SimllerBooksFailuer(this.errorMessage);
}
