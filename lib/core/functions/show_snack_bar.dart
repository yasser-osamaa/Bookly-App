import 'package:flutter/material.dart';

void showSnackBar(context, String txt) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        txt,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.red.shade400,
    ),
  );
}
