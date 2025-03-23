import 'package:final_clean/app/app.dart';
import 'package:final_clean/di/service_locator.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await setupLocator();
  runApp(const MyApp());
}
