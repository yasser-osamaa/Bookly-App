import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'feature_books_state.dart';

class FeatureBooksCubitCubit extends Cubit<FeatureBooksCubitState> {
  FeatureBooksCubitCubit({required this.homeRepo})
      : super(FeatureBooksCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFetureBooks() async {
    emit(FeatureBooksCubitLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold(
      (failure) {
        emit(FeatureBooksCubitFailure(errMsg: failure.errMsg));
      },
      (books) {
        emit(FeatureBooksCubitSuccess(books: books));
      },
    );
  }
}
