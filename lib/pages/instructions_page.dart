import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: 'instructions',
            child: Container(
              //width: double.infinity,
              //height: double.infinity,
              padding: const EdgeInsets.all(30.0),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xffFFA53F),
              ),
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Exo',
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      Text(
                        "How To Find Your Height",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "1. Select an object with low air resistance such as a pebble.\n\n"
                        "2. Press down the button and drop the object at the same instant.\n\n"
                        "3. Release the button the moment the object touches the ground.",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
