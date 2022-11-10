import 'package:flutter/material.dart';

Widget timeButton() {
  return Listener(
    onPointerDown: (details) => print("Pointer Down"),
    onPointerUp: (details) => print("Pointer Up"),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(230, 230),
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff2FEF95),
        foregroundColor: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 48.0, bottom: 5.0),
            child: Text(
              "00:00 sec",
              style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.w300,
                color: Color(0xff555555),
              ),
            ),
          ),
          Text(
            "HOLD",
            style: TextStyle(
              fontSize: 55.0,
            ),
          ),
        ],
      ),
    ),
  );
}
