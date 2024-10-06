import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_detailes_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_detailes_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similer_books_list_section.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailesAppBar(),
              BookDetailesSection(
                book: book,
              ),
              const Expanded(
                child: SizedBox(
                  height: 28,
                ),
              ),
              const SimilerBooksListViewSection(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
