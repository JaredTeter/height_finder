import 'package:flutter/material.dart';
import 'package:height_finder/button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'HEIGHT FINDER',
          style: TextStyle(
            fontSize: 38.0,
            fontFamily: 'Exo',
            letterSpacing: 3.0,
            color: Colors.black,
          ),
        )),
        shape: const Border(
            bottom: BorderSide(
          color: Colors.black,
          width: 2,
        )),
        toolbarHeight: 75.0,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 2),
            timeButton(),
            const Spacer(flex: 1),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "174",
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 0, 0, 3.0),
                      child: Text(
                        "ft",
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const Image(
                  image: AssetImage('assets/curved_underline.png'),
                  width: 180.0,
                ),
              ],
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
