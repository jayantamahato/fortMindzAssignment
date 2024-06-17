import 'package:get/get.dart';
import '../../../data/repository/books_repository.dart';
import '../model/book_model.dart';

class BookListController extends GetxController {
  RxBool isLoading = false.obs;
  RxList books = [].obs;
  final BookRepository _bookRepository = BookRepository();
  Future getList() async {
    try {
      isLoading(true);
      var res = await _bookRepository.getBooks();
      books.clear();
      books.add(Book.fromJson(res.data['ISBN:0201558025']));
      books.add(Book.fromJson(res.data['LCCN:93005405']));
    } catch (e) {
      Get.toNamed('/error', arguments: {'error': '$e'});
    } finally {
      isLoading(false);
    }
  }
}
