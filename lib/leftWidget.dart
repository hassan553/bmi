import 'package:bmi/constantent.dart';
import 'package:flutter/material.dart';

Widget left(w) {
  return Container(
    height: 30,
    width: w,

    decoration: BoxDecoration(
      color: accentColor,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),

    ),
  );
}

Widget right(w) {
  return Container(
    height: 30,
    width: w,

    decoration: BoxDecoration(
      color: accentColor,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),

    ),
  );
}
