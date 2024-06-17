import 'package:dio/dio.dart';

import '../../core/network_provide.dart';

class BookRepository {
  final API _api = API();
  Future<Response> getBooks() async {
    try {
      Response result = await _api.makeRequest
          .get('/books?bibkeys=ISBN:0201558025,LCCN:93005405&format=json');
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
