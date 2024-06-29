import 'package:flutter/material.dart';

import 'package:test2/core/utils/theme_manager.dart';
import 'package:test2/screens/checkout/check_out_screen.dart';
import 'package:test2/screens/onboarding/on_boarding_screen.dart';
import 'package:test2/screens/product%20details/widgets/pag_three_details.dart';
import 'package:test2/screens/product%20details/widgets/page_details_tow.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.appTheme,
      home: const OnBoardingScreen(),
    );
  }
}
