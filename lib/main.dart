import 'package:flutter/material.dart';
import 'package:galery/controller/my_gallery_controller.dart';
import 'package:galery/pages/my_gallery.dart';
import 'package:get/get.dart';
void main() {
  Get.lazyPut(()=>MyGalleryController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica',
      initialRoute: '/mygallery',
      routes: {
        '/mygallery':(context) => const MyGallery(),
        
      });
  }
}