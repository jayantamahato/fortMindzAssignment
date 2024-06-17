import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});
  static String route = '/error';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Text(
          '${Get.arguments['error']}',
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
