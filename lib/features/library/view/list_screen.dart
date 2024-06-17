import 'package:flutter/material.dart';
import 'package:fml/core/colors.dart';
import 'package:fml/features/library/controller/book_list_controller.dart';
import 'package:fml/features/library/view/widgets/fetch_button.dart';
import 'package:get/get.dart';

import 'widgets/app_bar.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});
  static String route = '/list';

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final BookListController _bookListController = Get.put(BookListController());

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      await _bookListController.getList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Library'),
      body: Obx(() => _bookListController.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              child: ListView.builder(
                  itemCount: _bookListController.books.length,
                  itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.all(5),
                        child: ListTile(
                          onTap: () {
                            Get.toNamed('/details', arguments: {
                              'bookId':
                                  '${_bookListController.books[index].bibKey}',
                              'infoUrl':
                                  '${_bookListController.books[index].infoUrl}'
                            });
                          },
                          leading: SizedBox(
                            height: 45,
                            width: 40,
                            child: Image.network(
                              _bookListController.books[index].thumbnailUrl,
                              height: 45,
                              width: 40,
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Text(_bookListController.books[index].bibKey),
                          subtitle: Text(
                            _bookListController.books[index].preview,
                            style:
                                TextStyle(fontSize: 12, color: AppColor.grey),
                          ),
                        ),
                      )),
            )),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(5),
        height: 50,
        child: FetchButton(
          controller: _bookListController,
        ),
      ),
    );
  }
}
