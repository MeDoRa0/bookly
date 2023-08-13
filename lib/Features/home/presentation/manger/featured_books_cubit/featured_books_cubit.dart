import 'package:bloc/bloc.dart';
import 'package:bookly/core/model/book_model/book_model.dart';
import 'package:bookly/core/model/data/repos/app_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final AppRepo homeRepo;
  Future<void> fetchFeaturedBook() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(
        FeaturedBooksFailuer(failure.errorMessage),
      );
    }, (books) {
      emit(
        FeaturedBooksSuccess(books),
      );
    });
  }
}
