import 'package:flutter/material.dart';

class SearchBookListView extends StatelessWidget {
  const SearchBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text('Search data here'),
          );
        },
        childCount: 5,
      ),
    );
  }
}
