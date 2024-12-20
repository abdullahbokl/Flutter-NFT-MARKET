import 'package:flutter/material.dart';

import 'core/utils/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: AppRouter.routes,
      initialRoute: Routes.kOnBoardingPage,
    );
  }
}
