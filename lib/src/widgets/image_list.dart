import 'package:flutter/material.dart';
import 'package:pics/src/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return createImage(images[index]);
      },
    );
  }

  Widget createImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(20.0),
//      child: Image.network(image.url),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 30.0,
            ),
            child: Image.network(image.url),
          ),
          Text(image.title),
        ],
      ),
    );
  }
}
