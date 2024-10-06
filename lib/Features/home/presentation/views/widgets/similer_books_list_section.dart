import 'package:bookly/Features/home/presentation/views/widgets/similer_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilerBooksListViewSection extends StatelessWidget {
  const SimilerBooksListViewSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 18,
            bottom: 16,
          ),
          child: Text(
            'You Can Also Like',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SimilerBooksListView(),
      ],
    );
  }
}
