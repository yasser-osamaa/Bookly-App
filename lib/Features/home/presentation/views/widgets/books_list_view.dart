import 'package:bookly/Features/home/presentation/view_models/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_error_text.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 12,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kBookDetailes,
                          extra: state.books[index],
                        );
                      },
                      child: CustomBookImage(
                        imgUrl: state.books[index].volumeInfo?.imageLinks
                                ?.thumbnail ??
                            '',
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FeatureBooksCubitFailure) {
          return CustomErrorText(
            errMsg: state.errMsg,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
