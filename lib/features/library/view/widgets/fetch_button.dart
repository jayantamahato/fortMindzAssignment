import 'package:flutter/material.dart';
import 'package:fml/features/library/controller/book_list_controller.dart';
import 'package:get/get.dart';

class FetchButton extends StatelessWidget {
  final BookListController controller;
  const FetchButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          controller.isLoading.value ? null : controller.getList();
        },
        child: Obx(() => controller.isLoading.value
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ))
            : const Text('Get book list')));
  }
}
