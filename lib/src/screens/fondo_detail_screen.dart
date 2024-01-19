
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cyclechallenge/src/controllers/fondo_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FondoDetailScreen extends StatelessWidget {
  const FondoDetailScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenController = Get.put(FondoDetailController());
    final List<String> imagePaths = [
      'assets/images/muzu.jpg',
      'assets/images/muzu.jpg',
    ];

    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (BuildContext context, child) => SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    // 대회 사진
                    CarouselSlider(
                      carouselController: screenController.imageController,
                      items: imagePaths.map((item) {
                        return Builder(builder: (BuildContext context) {
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(item, fit: BoxFit.fill),
                          );
                        });
                      }).toList(),
                      options: CarouselOptions(
                        height: 200.w,
                        initialPage: 0,
                        viewportFraction: 1.0,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 4),
                        onPageChanged: (index, _) => screenController.updateCurrentImage(index),
                      ),
                    ),
                    Obx(() {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < imagePaths.length; i++)
                            Container(
                              width: 8.w,
                              height: 8.w,
                              margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(screenController.currentImage.value == i ? 0.9 : 0.4),
                              ),
                            ),
                        ]
                      );
                    }),
                    // 뒤로가기
                    Positioned(
                      left: 0.w, top: 0.w,
                      child: IconButton(
                          padding: EdgeInsets.all(0.r),
                          icon: Icon(
                            Icons.arrow_left_outlined,
                            color: Colors.yellow,
                            size: 45.w,
                          ),
                          onPressed: () { Navigator.pop(context); },
                        ),
                    ),
                  ],
                ),
                Container(
                  height: 150.w,
                  color: Colors.black,
                )
              ],
            ),
          )
        )
      )
    );
  }
}
