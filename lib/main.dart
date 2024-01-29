import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/routers/app_router.dart';
import 'package:flutter_application_1/config/routers/route_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(background: Colors.white),
      ),
      initialRoute: RouteNames.onboarding,
      onGenerateRoute: AppRouter.onGenerateRoutes,
    );
  }
}
