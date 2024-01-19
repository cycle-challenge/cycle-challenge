
import 'package:cyclechallenge/src/screens/Fondo_Detail_Screen.dart';
import 'package:cyclechallenge/src/utils/theme/theme.dart';
import 'package:cyclechallenge/src/utils/theme/widget_themes/text_theme.dart';
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
              backgroundColor: Colors.white,
              title: Text('싸이클 챌린지', style: Theme.of(context).textTheme.maintext.copyWith(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 17.sp)),
              centerTitle: true,
              shape: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.w,
                ),
              ),
              scrolledUnderElevation: 0,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25.w, top: 15.h),
                    child: Text('대회를 찾아볼까요?', style: Theme.of(context).textTheme.maintext.copyWith(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 18.sp)),
                  ),
                  SizedBox(height: 15.w),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('카테고리로 찾기', style: Theme.of(context).textTheme.maintext.copyWith(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 13.sp)),
                        SizedBox(height: 5.w),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(1.0),
                                      blurRadius: 5.0,
                                      spreadRadius: 0.0,
                                      offset: const Offset(0, 3),
                                    )
                                  ]
                              ),
                              child: Text("그란폰도", style: Theme.of(context).textTheme.maintext.copyWith(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 13.sp)),
                            ),
                            SizedBox(width: 5.w),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(1.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 0.0,
                                    offset: const Offset(0, 3),
                                  )
                                ]
                              ),
                              child: Text("메디오폰도", style: Theme.of(context).textTheme.maintext.copyWith(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 13.sp)),
                            ),
                            SizedBox(width: 5.w),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(1.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 0.0,
                                    offset: const Offset(0, 3),
                                  )
                                ]
                              ),
                              child: Text("MTB", style: Theme.of(context).textTheme.maintext.copyWith(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 13.sp)),
                            )
                          ],
                        )
                      ]
                    )
                  ),
                  SizedBox(height: 10.w),
                  Container(
                    margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15.w,
                              childAspectRatio: (0.80).w,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  Get.to(() => const FondoDetailScreen(), transition: Transition.rightToLeft);
                                },
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 155.w,
                                          height: 120.w,
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(image: AssetImage('assets/images/muzu.jpg'), fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(10.r),
                                          ),
                                        ),
                                        Positioned(
                                          left: 5.w,
                                          top: 5.w,
                                          child: Container(
                                            width: 45.w,
                                            height: 20.w,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(15.r),
                                            ),
                                            child: Center(
                                                child: Text('D-14', style: Theme.of(context).textTheme.maintext.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 12.sp))
                                            ),
                                          ),
                                        )
                                      ]
                                    ),
                                    // 대회 이름, 대회장 위치
                                    Container(
                                      margin: EdgeInsets.only(left: 5.w, top: 5.h),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('무주 그란폰도', style: Theme.of(context).textTheme.maintext.copyWith(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 15.sp)),
                                                  Text('전라남도 무주시', style: Theme.of(context).textTheme.maintext.copyWith(fontWeight: FontWeight.w400, color: Colors.black54, fontSize: 12.sp)),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5.w),
                                          // 카테고리
                                          Row(
                                            children: [
                                              Container(
                                                width: 45.w,
                                                height: 20.w,
                                                decoration: BoxDecoration(
                                                  color: Colors.black12,
                                                  borderRadius: BorderRadius.circular(5.r),
                                                ),
                                                child: Center(
                                                    child: Text('그란폰도', style: Theme.of(context).textTheme.maintext.copyWith(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 10.sp))
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        )
      ),
    );
  }
}
