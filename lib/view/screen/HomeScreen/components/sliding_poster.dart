import 'package:flutter/material.dart';
import 'package:shopiee/models/poster_item_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SlidingPoster extends StatelessWidget {
   SlidingPoster({Key? key}) : super(key: key);

  final controller = PageController( keepPage: true);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // 1st widget
          PageView.builder(
            controller: controller,
            itemCount: posterItemList.length,
            itemBuilder: (context, index) {
              return Image.asset(
                posterItemList[index].images,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              );
            },
          ),
          // 2nd widget
          SmoothPageIndicator(
            controller: controller,
            count: posterItemList.length,
            effect: SwapEffect(
              dotHeight: 10,
              dotWidth: 10,
              type: SwapType.yRotation,
            ),
            // effect: const WormEffect(
            //   activeDotColor: Colors.black,
            //   dotHeight: 12,
            //   dotWidth: 12,
            //   type: WormType.thin,
            //   // strokeWidth: 5,
            // ),

          ),
        ],
      ),
    );
  }
}
