part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksCubitInitial extends FeatureBooksState {}

final class FeatureBooksCubitLoading extends FeatureBooksState {}

final class FeatureBooksCubitFailure extends FeatureBooksState {
  final String errMsg;

  const FeatureBooksCubitFailure({required this.errMsg});
}

final class FeatureBooksCubitSuccess extends FeatureBooksState {
  final List<BookModel> books;

  const FeatureBooksCubitSuccess({required this.books});
}
