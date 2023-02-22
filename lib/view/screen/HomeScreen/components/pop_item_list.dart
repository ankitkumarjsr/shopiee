import 'package:flutter/material.dart';
import 'package:shopiee/constants/images_constants.dart';

import '../../../../models/popular_item_model.dart';

class PopItemList extends StatelessWidget {
  const PopItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.161,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    popularItemList[index].images,
                    height: MediaQuery.of(context).size.height*0.109,
                    width: MediaQuery.of(context).size.width*0.209,
                    fit: BoxFit.fill,

                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(popularItemList[index].name)
                ],
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: popularItemList.length,
      ),
    );
  }
}
