import 'package:bookly/Features/search/presentation/views/widgets/search_book_list_view.dart';
import 'package:bookly/Features/search/presentation/views/widgets/serach_text_field.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchTextField(),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Search Result',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        SearchBookListView(),
      ],
    );
  }
}
