import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../api/api_provider.dart';
import '../model/photos.dart';

class PhotosController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    getPosts();
  }

  var photo = <PhotoModel>[].obs;
  var loading = false.obs;

  final PhotoProvider _provider = PhotoProvider();

  getPosts() async {
    loading(true);
    var response = await _provider.getPhoto();
    if (!response.status.hasError) {
      photo.value = postModelFromJson(response.bodyString!);
    }
    loading(false);
  }

  sendPost() async {
    loading(true);
    var response = await _provider.sendPhoto({
      'title': 'foo',
      'body': 'bar',
      'userId': 1,
    });
    if (!response.status.hasError) {
      Get.snackbar('Success', 'Post added successfully',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white);
    }
    loading(false);
  }

  PhotoModel findByID(int id) {
    return photo.firstWhere((prod) => prod.id == id);
  }
}
