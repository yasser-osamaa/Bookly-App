part of 'feature_books_cubit.dart';

sealed class FeatureBooksCubitState extends Equatable {
  const FeatureBooksCubitState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksCubitInitial extends FeatureBooksCubitState {}

final class FeatureBooksCubitLoading extends FeatureBooksCubitState {}

final class FeatureBooksCubitFailure extends FeatureBooksCubitState {
  final String errMsg;

  const FeatureBooksCubitFailure({required this.errMsg});
}

final class FeatureBooksCubitSuccess extends FeatureBooksCubitState {
  final List<BookModel> books;

  const FeatureBooksCubitSuccess({required this.books});
}
