import 'package:flutter/material.dart';

Widget timeButton(int seconds, int centiseconds) {
  String displaySeconds = (seconds > 9) ? "$seconds" : "0$seconds"; //Adds leading zero when in when there is less than two digits
  String displayCentiseconds = (centiseconds > 9) ? "$centiseconds" : "0$centiseconds"; //Adds leading zero when in when there is less than two digits
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
          padding: const EdgeInsets.only(top: 46.0, bottom: 0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  "$displaySeconds:$displayCentiseconds",
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'RobotoMono',
                    color: Color(0xff555555),
                  ),
                ),
              ),
              const Text(
                " sec",
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff555555),
                ),
              ),
            ],
          ),
        ),
        const Text(
          "HOLD",
          style: TextStyle(
            fontSize: 55.0,
            letterSpacing: 2.0,
          ),
        ),
      ],
    ),
  );
}
