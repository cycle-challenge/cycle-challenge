import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/main.dart';

class PlaceTapBarHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    final colorTheme = Theme.of(context).colorTheme;

    return GestureDetector(
      child: Container(
        width: double.maxFinite,
        color: colorTheme.background,
        height: 50,
        child: TabBar(
            isScrollable: true,
            padding: EdgeInsets.zero,
            tabAlignment: TabAlignment.start,
            controller: DefaultTabController.of(context),
            tabs: const [
              Tab(text: '메인'),
              Tab(text: '사진'),
              Tab(text: '리뷰'),
              Tab(text: '여행')
            ]),
      ),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(oldDelegate) => false;
}
