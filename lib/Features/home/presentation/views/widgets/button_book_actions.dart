import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ButtonBookAction extends StatelessWidget {
  const ButtonBookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: Row(
        children: [
          Expanded(
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
              backGroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              text: 'Free Preview',
              fontSize: 16,
              borderRadius: BorderRadius.only(
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
