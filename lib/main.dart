import 'package:flutter/material.dart';
import 'package:height_finder/widgets/custom_theme.dart';
import 'package:height_finder/pages/instructions_page.dart';
import 'package:height_finder/provider/timer_provider.dart';
import 'package:provider/provider.dart';

import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      initialRoute: '/home',
      routes: {
        '/home': (context) => ChangeNotifierProvider(
          create: (context) => TimerProvider(),
          child: const Home(),
        ),
        '/instructions': (context) => const Instructions(),
      },
    );
  }
}
