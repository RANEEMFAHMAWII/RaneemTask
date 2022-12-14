import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:raneemtask/view/home.dart';
import 'package:raneemtask/view/photo_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(
          name: HomeScreen.routeName,
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: PhotoDetail.routeName,
          page: () => const PhotoDetail(),
        )
      ],
    );
  }
}
