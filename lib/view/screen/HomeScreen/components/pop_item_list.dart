import 'package:flutter/material.dart';

import '../../../../models/popular_item_model.dart';

class PopItemList extends StatelessWidget {
  const PopItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 3)),
      height: MediaQuery.of(context).size.height * 0.11,
      // color: Colors.blue,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset(
                  popularItemList[index].images,
                  height: MediaQuery.of(context).size.height*0.049,
                  fit: BoxFit.fitHeight,

                ),
                const SizedBox(
                  height: 5,
                ),
                Text(popularItemList[index].name)
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: popularItemList.length,
      ),
    );
  }
}
