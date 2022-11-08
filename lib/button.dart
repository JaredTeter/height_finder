import 'package:flutter/material.dart';

Widget timeButton() {
  return Listener(
    onPointerDown: (details) => print("Pointer Down"),
    onPointerUp: (details) => print("Pointer Up"),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(200, 200),
        shape: const CircleBorder(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "00:00",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          Text(
            "HOLD",
            style: TextStyle(
              fontSize: 46.0,
            ),
          ),
        ],
      ),
    ),
  );
}
