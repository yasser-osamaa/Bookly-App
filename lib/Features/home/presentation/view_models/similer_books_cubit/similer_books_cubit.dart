import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(this.homeRepo) : super(SimilerBooksInitial());
  final HomeRepo homeRepo;
  fetchSimilerBooks({required String category}) async {
    emit(SimilerBooksLoading());
    var result = await homeRepo.fetchSimilerBooks(category: category);
    result.fold(
      (failure) {
        emit(
          SimilerBooksFailure(errMsg: failure.errMsg),
        );
      },
      (books) {
        emit(SimilerBooksSuccess(books: books));
      },
    );
  }
}
