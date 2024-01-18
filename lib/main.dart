
import 'package:cyclechallenge/src/controllers/year_controller.dart';
import 'package:cyclechallenge/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final yearController = Get.put(YearController());
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (BuildContext context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: TAppTheme.baseTheme,
        darkTheme: TAppTheme.baseTheme,
        themeMode: ThemeMode.system,
        home: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar:AppBar(
              backgroundColor: const Color(0xffD9D9D9),
              title: Text('Cycle-Challenge', style: TextStyle(fontSize: 18.sp)),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: const Color(0xffD9D9D9),
                    child: TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      labelStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 17.sp),
                      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 17.sp),
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.white,
                      indicator: const BoxDecoration(color: Colors.transparent),
                      controller: yearController.tabController,
                      tabs: yearController.myTabs,
                      onTap: (index) {
                        yearController.tabNum.value = index;
                      },
                    ),
                  ),
                  Obx(() {
                    return Container(
                      margin: EdgeInsets.only(left: 25.w, right: 25.w, top: 15.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (yearController.tabNum.value == 1)...[
                            Text('2024-01', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 17.sp)),
                            SizedBox(height: 15.h),
                            Container(
                              height: 265.h,
                              color: const Color(0xffD9D9D9),
                              child: Column(
                                children: [
                                  // 대회장 사진, 즐겨찾기
                                  Stack(
                                    children: [
                                      Container(
                                        height: 143.h,
                                        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/muzu.jpg'), fit: BoxFit.fill)),
                                      ),
                                      Positioned(
                                        left: 15.w,
                                        top: 15.h,
                                        child: Container(
                                          width: 50.w,
                                          height: 50.w,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(25.r),
                                          ),
                                          child: Center(child: Text('즐찾', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp))),
                                        ),
                                      )
                                    ]
                                  ),
                                  // 대회 이름, 대회장 위치
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text('무주 그란폰도', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 17.sp)),
                                                Text('전라남도 무주시', style: TextStyle(color: Colors.black, fontSize: 13.sp)),
                                              ],
                                            ),
                                            Container(
                                              width: 50.w,
                                              height: 50.w,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(25.r),
                                              ),
                                              child: Center(child: Text('D-14', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp))),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10.h),
                                        // 카테고리
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                                              decoration: BoxDecoration(
                                                color: const Color(0xff44C2AB),
                                                borderRadius: BorderRadius.circular(15.r),
                                              ),
                                              child: Text("그란폰도", style: TextStyle(color: Colors.black, fontSize: 13.sp)),
                                            ),
                                            SizedBox(width: 5.w),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                                              decoration: BoxDecoration(
                                                color: const Color(0xff44C2AB),
                                                borderRadius: BorderRadius.circular(15.r),
                                              ),
                                              child: Text("메디오폰도", style: TextStyle(color: Colors.black, fontSize: 13.sp)),
                                            ),
                                            SizedBox(width: 5.w),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                                              decoration: BoxDecoration(
                                                color: const Color(0xff44C2AB),
                                                borderRadius: BorderRadius.circular(15.r),
                                              ),
                                              child: Text("MTB", style: TextStyle(color: Colors.black, fontSize: 13.sp)),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  )
                                ],
                              ),
                            ),
                          ]
                        ],
                      ),
                    );
                  }),
                ],
              ),
            )
          ),
        )
      ),
    );
  }
}
