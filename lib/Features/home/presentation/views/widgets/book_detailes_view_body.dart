import 'package:bookly/Features/home/presentation/views/widgets/custom_book_detailes_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBookDetailesAppBar(),
      ],
    );
  }
}
