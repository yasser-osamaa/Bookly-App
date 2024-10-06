import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/functions/custom_launcher_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ButtonBookAction extends StatelessWidget {
  const ButtonBookAction({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backGroundColor: Colors.white,
              textColor: Colors.black,
              text: 'Free',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                customLauncherUrl(context, book.volumeInfo?.previewLink);
              },
              backGroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              text: getText(book),
              fontSize: 16,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String getText(BookModel book) {
  if (book.volumeInfo?.previewLink != null) {
    return 'Preview';
  } else {
    return 'Not Available';
  }
}
