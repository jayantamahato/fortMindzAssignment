import 'package:flutter/material.dart';
import 'package:fml/core/network_provide.dart';
import 'package:fml/features/library/model/book_model.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class BookListController extends GetxController {
  RxBool isLoading = false.obs;
  RxList books = [].obs;

  final API _api = API();
  getList() async {
    try {
      isLoading(true);
      var res = await _api.makeRequest
          .get('/books?bibkeys=ISBN:0201558025,LCCN:93005405&format=json');
      books.clear();
      books.add(Book.fromJson(res.data['ISBN:0201558025']));
      books.add(Book.fromJson(res.data['LCCN:93005405']));
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }
}
