import 'package:flutter/material.dart';
import 'package:graddingapp/project/routes/route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: goRouterConfig,
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF111928)),
          )),
    );
  }
}
