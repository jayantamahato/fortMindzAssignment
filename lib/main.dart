import 'package:flutter/material.dart';
import 'package:fml/core/theme.dart';
import 'package:fml/route.dart';
import 'package:get/route_manager.dart';
import 'features/library/view/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'FortMindz',
      theme: AppTheme().light(),
      home: const ListScreen(),
      getPages: AppRoutes.getRoute(),
    );
  }
}
