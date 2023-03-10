import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_booking_app/register_screen/login_screen/login_screen.dart';
import 'package:hotel_booking_app/register_screen/register_screen.dart';
import 'package:hotel_booking_app/shared/bloc_observer/bloc_observer.dart';
import 'package:hotel_booking_app/welcome_screen/welcome_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

