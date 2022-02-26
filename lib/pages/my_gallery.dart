import 'package:flutter/material.dart';
import 'package:galery/controller/my_gallery_controller.dart';
import 'package:get/get.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gallery'),
        backgroundColor: Colors.red[600],
      ),
      body: 
      Container(
        child: Center(
          
          child: GetBuilder<MyGalleryController>(builder: (_) {
            return SizedBox(
            
              width: 600,
              height: 570,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  elevation: 20,
                  shadowColor: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center
                    ,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        child: const Text('MY NICE SHOES',textScaleFactor: 2,) )
                      ,
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: CircleAvatar(
                          
                          radius: 150,
                          backgroundImage: NetworkImage(_.misImagenes[_.numeroimg]),
                        ),
                      ),   
                      Container(
                        transform: Matrix4.translationValues(235,-0,0) ,
                        child: Row(
                        children: [IconButton(
                              onPressed: () {
                                _.regresar();
                              },
                              icon: const Icon(Icons.arrow_back),iconSize: 50,),
                              
                          IconButton(
                              onPressed: () {
                                _.siguiente();
                              },
                              icon: const Icon(Icons.arrow_forward),iconSize: 50,)],
                      ),)
                          
                        ],
                      )
  
                  ),
            );
          }),
        ),
      ),
    );
  }
}
