import 'package:flutter/material.dart';
import 'package:delivery_app/src/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
        //accentColor: Color.fromRGBO(255, 140, 0, 1.0),
        primaryColor: Color.fromRGBO(10, 31, 68, 1.0),
        buttonTheme: ButtonThemeData(
          buttonColor: Color.fromRGBO(0, 122, 255, 1.0),
          disabledColor: Color.fromRGBO(142, 142, 147, 1.2),
          textTheme: ButtonTextTheme.primary,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        )
      ),
    );
  }
}
