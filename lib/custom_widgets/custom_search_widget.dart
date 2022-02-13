import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 40,
            width: Get.width - 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: const Text("What you are searching for?"),
          ),
          Positioned(
              right: 0,
              child: Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange[800],
                ),
                child: const Center(
                  child: Text(
                    "Search",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
