import 'package:flutter/material.dart';
import 'package:the_todo_list_app/splash_screen/splash_screen.dart';
import 'package:the_todo_list_app/authintication/loginscreen.dart';
import 'package:the_todo_list_app/authintication/signup_screen.dart';
import 'package:the_todo_list_app/homescreen/home_screen.dart';
import 'package:the_todo_list_app/todo_list/ui/todo_list_app.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/todo': (context) => const TodoListApp(),
      },
    );
  }
}