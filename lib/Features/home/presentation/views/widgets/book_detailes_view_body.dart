import 'package:bookly/Features/home/presentation/views/widgets/book_detailes_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_detailes_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similer_books_list_section.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailesAppBar(),
              BookDetailesSection(),
              Expanded(
                child: SizedBox(
                  height: 28,
                ),
              ),
              SimilerBooksListViewSection(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
