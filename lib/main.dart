import 'package:bmical/Pages/result_page.dart';
import 'package:flutter/material.dart';

import 'Pages/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(backgroundColor: Color(0xff0a0d22)),
          primaryColor: Color(0xff0a0d22),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
          scaffoldBackgroundColor: Color(0xff0a0d22),
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white))),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/first': (context) => Result_page(),
      },
    );
  }
}
