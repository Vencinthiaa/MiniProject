import 'package:donor_darah/Booking.dart';
import 'package:donor_darah/Login.dart';
import 'package:donor_darah/Register.dart';
import 'package:donor_darah/Splashscreen.dart';
import 'package:donor_darah/Survey.dart';
import 'package:flutter/material.dart';
import 'Splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Splash(),
      '/login': (context) => Login(),
      '/booking': (context) => Booking(),
      '/survey': (context) => Survey(),
      '/splashscreen': (context) => Splashscreen(),
      '/register': (context) => Register(),
    },
  ));
}
