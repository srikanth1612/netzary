import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netzary/models/dashboard_home_model.dart';
import 'package:netzary/utilites/number_reader.dart';

class CustomPickWidget extends StatelessWidget {
  final Item singleData;
  const CustomPickWidget({Key? key, required this.singleData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 190,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: singleData.thumbnail ?? "",
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageBuilder: (context, imageProvider) => Container(
                    height: 150,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 5,
                    right: 15,
                    child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 2.5),
                        child: const Text(
                          "For Sale",
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    '\u{20B9}' +
                        numDifferentiation(singleData.price).toString(),
                    style: const TextStyle(color: Colors.white)),
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                )
              ],
            ),
            Flexible(
                child: Text(
              singleData.title.toString(),
              maxLines: 3,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            )),
            Wrap(
                children:
                    List.from(singleData.attributes!.map((item) => Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 4, 4),
                          child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2.5),
                              child: Text(
                                (item.value ?? "") + " " + (item.unit ?? ""),
                                maxLines: 1,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )),
                        )))),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Text(singleData.locality ?? "",
                    style: const TextStyle(color: Colors.white, fontSize: 13))
              ],
            ),
            const Divider(
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
