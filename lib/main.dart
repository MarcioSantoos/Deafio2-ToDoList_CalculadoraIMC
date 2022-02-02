import 'package:application_calculadora/pages/calculator_page/calculator_page.dart';
import 'package:application_calculadora/pages/login_page/login_page.dart';
import 'package:application_calculadora/pages/todo_list_page/todo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora IMC',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme:  ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFC1007E),
          secondary: const Color(0xFF9E9E9E),
        ),
        primaryColor:  const Color(0xFFC1007E),
        toggleableActiveColor: const Color(0xFFC1007E),
        iconTheme: const IconThemeData(color: Color(0xFFC1007E),),
        listTileTheme: const ListTileThemeData(iconColor:Color(0xFFC1007E),)
      ),
      initialRoute: '/',
      routes: {
        '/': (context)=>const LoginPage(),
        '/calculator': (context)=>const CalculatorPage(),
        '/todolist': (context)=>const TodoPage(),
      },
    );
  }
}
