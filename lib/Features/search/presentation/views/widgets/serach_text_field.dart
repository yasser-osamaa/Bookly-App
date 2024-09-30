import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Book Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          border: customOutLineBorder(),
          enabledBorder: customOutLineBorder(),
          focusedBorder: customOutLineBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder customOutLineBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
