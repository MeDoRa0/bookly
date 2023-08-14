import 'package:bloc/bloc.dart';
import 'package:bookly/core/model/book_model/book_model.dart';
import 'package:bookly/core/model/data/repos/App_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo, {String? userSearch}) : super(SearchInitial());
  final AppRepo searchRepo;
  Future<void> fetchSearchBooks({required String userSearch}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchBooks(userSearch: userSearch);
    result.fold((failure) {
      emit(
        SearchFailuer(failure.errorMessage),
      );
    }, (books) {
      emit(
        SearchSuccess(books),
      );
    });
  }
}
