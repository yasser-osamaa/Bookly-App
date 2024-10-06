import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/view_models/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_detailes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailesView extends StatefulWidget {
  const BookDetailesView({super.key, required this.book});
  final BookModel book;
  @override
  State<BookDetailesView> createState() => _BookDetailesViewState();
}

class _BookDetailesViewState extends State<BookDetailesView> {
  @override
  void initState() {
    BlocProvider.of<SimilerBooksCubit>(context).fetchSimilerBooks(
        category: widget.book.volumeInfo!.categories?[0] ?? 'general');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailesViewBody(
          book: widget.book,
        ),
      ),
    );
  }
}
