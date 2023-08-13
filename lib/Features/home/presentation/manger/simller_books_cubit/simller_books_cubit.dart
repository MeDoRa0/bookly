import 'package:bloc/bloc.dart';
import 'package:bookly/core/model/book_model/book_model.dart';
import 'package:bookly/core/model/data/repos/app_repo.dart';
import 'package:equatable/equatable.dart';

part 'simller_books_state.dart';

class SimllerBooksCubit extends Cubit<SimllerBooksState> {
  SimllerBooksCubit(this.homeRepo) : super(SimllerBooksInitial());
  final AppRepo homeRepo;
  Future<void> fetchSimllerBooks({required String category}) async {
    emit(SimllerBooksLoading());
    var result = await homeRepo.fetchSimllerBooks(category: '');
    result.fold((failure) {
      emit(
        SimllerBooksFailuer(failure.errorMessage),
      );
    }, (books) {
      emit(
        SimllerBooksSuccess(books),
      );
    });
  }
}
