import 'package:flutter/material.dart';

Widget timeButton(int seconds, int centiseconds) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      fixedSize: const Size(230, 230),
      shape: const CircleBorder(),
      backgroundColor: const Color(0xff2FEF95),
      foregroundColor: Colors.black,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 48.0, bottom: 5.0),
          child: Text(
            "$seconds:$centiseconds sec",
            style: const TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.w300,
              color: Color(0xff555555),
            ),
          ),
        ),
        const Text(
          "HOLD",
          style: TextStyle(
            fontSize: 55.0,
          ),
        ),
      ],
    ),
  );
}
