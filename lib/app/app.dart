import 'package:final_clean/routes/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Test App",
      //theme: ,
      //darkTheme: ,
      routerConfig: Routes.router,
    );
  }
}
