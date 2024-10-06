import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorText extends StatelessWidget {
  const CustomErrorText({super.key, required this.errMsg});
  final String errMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMsg,
        textAlign: TextAlign.center,
        style: Styles.textStyle18.copyWith(color: Colors.red),
      ),
    );
  }
}
