import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:get/state_manager.dart';

class PhotoDetail extends StatelessWidget {
  static const routeName = '/photo-detail';
  const PhotoDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoId = Get.arguments['id'];
    final albumId = Get.arguments['albumId'];
    final imageUrl = Get.arguments['url'];
    final title = Get.arguments['title'];
    final thumbnailUrl = Get.arguments['thumbnailUrl'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details $photoId',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(
                  flex: 1,
                  child: Center(
                      child: Text(
                    'ID',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
                ),
                Expanded(
                  flex: 2,
                  child: Text('$photoId'),
                ),
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  flex: 1,
                  child: Center(
                      child: Text(
                    'AlbumId',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
                ),
                Expanded(flex: 2, child: Text('$albumId')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Expanded(
                  flex: 1,
                  child: Center(
                      child: Text(
                    'Titile',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
                ),
                Expanded(flex: 2, child: Text('$title')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  flex: 1,
                  child: Center(
                      child: Text(
                    'Thumbnail',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
                ),
                Expanded(
                    flex: 1,
                    child: SizedBox(width: 100, child: Text('$thumbnailUrl'))),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(thumbnailUrl),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: Center(
                        child: Text(
                      'Image',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text('$imageUrl'),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(imageUrl),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
