import 'package:flutter/material.dart';
import 'package:fml/features/library/controller/book_list_controller.dart';

class FetchButton extends StatelessWidget {
  final BookListController controller;
  const FetchButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          controller.isLoading.value ? null : await controller.getList();
        },
        child: const Text('Get book list'));
  }
}
