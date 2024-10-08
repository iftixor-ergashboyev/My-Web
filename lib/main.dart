import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_web/pages/splash_page.dart';

void main() {
  runApp(const MyWeb());
}
class MyWeb extends StatelessWidget {
  const MyWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          primary: CupertinoColors.white,
            brightness: Brightness.light,
            onPrimary: CupertinoColors.white,
            secondary: CupertinoColors.activeBlue,
            onSecondary: CupertinoColors.systemBlue,
          error: Colors.redAccent,
          onError: Colors.green,
          surface: CupertinoColors.systemBlue,
          onSurface: CupertinoColors.white,
        )
      ),
      home: const SplashPage(),
    );
  }
}
