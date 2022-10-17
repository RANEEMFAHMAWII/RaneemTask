import 'package:get/get.dart';

class PhotoProvider extends GetConnect {
  Future<Response> getPhoto() =>
      get('https://jsonplaceholder.typicode.com/photos');

  Future<Response> sendPhoto(Map data) => post(
        'https://jsonplaceholder.typicode.com/photos',
        data,
        contentType: 'application/json; charset=UTF-8',
      );
}
