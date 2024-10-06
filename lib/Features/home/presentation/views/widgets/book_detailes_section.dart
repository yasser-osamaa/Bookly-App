import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/button_book_actions.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/rating_book.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailesSection extends StatelessWidget {
  const BookDetailesSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(
          height: 14,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: CustomBookImage(
              imgUrl: book.volumeInfo?.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(
          height: 35,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: Text(
            book.volumeInfo?.title ?? '',
            style: Styles.textStyle30,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          book.volumeInfo?.authors?[0] ?? '',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(.7),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        RatingBook(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 4,
          count: book.volumeInfo?.pageCount ?? 0,
        ),
        const SizedBox(
          height: 30,
        ),
        const ButtonBookAction(),
      ],
    );
  }
}
