import 'package:flutter/material.dart';
import 'package:worldtimeapps/pages/home.dart';
import 'package:worldtimeapps/pages/loading.dart';
import 'package:worldtimeapps/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/'      :  (context) => Loading(),
      '/home'  :  (context) => Home(),
      '/location' : (context) => ChooseLocation(),
    },
  ));
}
