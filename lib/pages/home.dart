import 'dart:math';

import 'package:flutter/material.dart';
import 'package:height_finder/button.dart';
import 'package:height_finder/provider/timer_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var timer;

  @override
  void initState() {
    super.initState();
    timer = Provider.of<TimerProvider>(context, listen: false);
  }

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
        child: Stack(
          children: [
            Consumer<TimerProvider>(builder: (context, timerprovider, widget) {
              return Column(
                children: [
                  const Spacer(flex: 2),
                  Listener(
                    onPointerDown: timer.startTimer,
                    onPointerUp: timer.stopTimer,
                    child: timeButton(timer.seconds, timer.centiseconds),
                  ),
                  const Spacer(flex: 1),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${(16 * pow((timer.seconds + timer.centiseconds / 100), 2)).round()}',
                            style: const TextStyle(
                              fontSize: 40.0,
                            ),
                          ),
                          const Padding(
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
              );
            }),
            Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTapDown: (details) {
                    Navigator.pushNamed(context, '/instructions');
                  },
                  child: Hero(
                    tag: 'instructions',
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color(0xffFFA53F),
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 4.0,
                        )],
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 3),
                          child: Text(
                            '?',
                            style: TextStyle(
                              fontSize: 55,
                              //fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFD8AD),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
