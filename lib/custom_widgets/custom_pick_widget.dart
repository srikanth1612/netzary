import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomPickWidget extends StatelessWidget {
  const CustomPickWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.yellow,
        height: 350,
        width: 225,
        child: Column(
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      "https://milkiyat.bangalore2.com/media/slides/app_bannera-08.jpg",
                  fit: BoxFit.fitWidth,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
