import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubitCubit extends Cubit<FeatureBooksCubitState> {
  FeatureBooksCubitCubit() : super(FeatureBooksCubitInitial());
}
