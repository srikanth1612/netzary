import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netzary/models/dashboard_home_model.dart';

class CustomSliderWidget extends StatelessWidget {
  final List<Item> sliderData;

  const CustomSliderWidget({Key? key, required this.sliderData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(bottom: 5),
      height: Get.width * 0.65,
      width: Get.width,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          // controller: _controller.scrollController,
          physics: const PageScrollPhysics(),

          // physics: scroll,
          scrollDirection: Axis.horizontal,
          itemCount: sliderData.length,
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                  padding: const EdgeInsets.all(25.0),
                  child: CachedNetworkImage(
                    imageUrl: sliderData[index].image ?? "",
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    imageBuilder: (context, imageProvider) => Container(
                      height: Get.width * 0.65,
                      width: Get.width - 50,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )),
            );
          }),
    );
  }
}
