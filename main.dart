import 'package:canteenapp/home_page.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Myapp());
}

class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Canteen Menu app',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff2b2b2b),
        appBarTheme: AppBarTheme(
          color: Color(0xff2b2b2b),

        )
      ),

      home: HomePage(),
    );
  }
}