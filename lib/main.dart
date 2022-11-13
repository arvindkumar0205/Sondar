import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sonder/screens/details_pagein.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      scrollBehavior: const MaterialScrollBehavior().copyWith(dragDevices: {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
        PointerDeviceKind.trackpad,
        PointerDeviceKind.unknown,
        PointerDeviceKind.invertedStylus
      }),
      home: const DetailsPagein(),
    );
  }
}
