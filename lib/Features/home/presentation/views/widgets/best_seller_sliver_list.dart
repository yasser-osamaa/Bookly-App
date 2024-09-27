
import 'package:bookly/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerSliverListView extends StatelessWidget {
  const BestSellerSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: BestSellerListItem(),
          );
        },
        childCount: 5,
      ),
    );
  }
}
