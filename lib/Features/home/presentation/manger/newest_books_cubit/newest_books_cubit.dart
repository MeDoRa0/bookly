import 'package:bloc/bloc.dart';
import 'package:bookly/core/model/book_model/book_model.dart';
import 'package:bookly/core/model/data/repos/app_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final AppRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(
        NewestBooksFailuer(failure.errorMessage),
      );
    }, (books) {
      emit(
        NewestBooksSuccess(books),
      );
    });
  }
}
