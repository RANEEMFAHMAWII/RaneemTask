import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raneemtask/view/photo_detail.dart';

import '../controller/controller_photos.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<PhotosController>(
        init: PhotosController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('raneemfahmawi98@gmail.com'),
              centerTitle: true,
            ),
            body: controller.loading.value
                ? const Center(child: CircularProgressIndicator())
                : ListView.separated(
                    itemCount: controller.photo.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () =>
                          Get.toNamed(PhotoDetail.routeName, arguments: {
                        'albumId': controller.photo[index].albumId,
                        'id': controller.photo[index].id,
                        'title': controller.photo[index].title,
                        'url': controller.photo[index].url,
                        'thumbnailUrl': controller.photo[index].thumbnailUrl,
                      }),
                      child: ListTile(
                        leading: Text(controller.photo[index].id.toString()),
                        title: Text(controller.photo[index].title),
                        trailing: Image.network(controller.photo[index].url),
                      ),
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
          );
        });
  }
}
