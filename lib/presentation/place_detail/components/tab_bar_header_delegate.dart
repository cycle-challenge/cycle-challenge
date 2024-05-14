

import 'package:flutter/material.dart';

class TapBarHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
        height: 50,
        color: colorScheme.surface,
        child: const TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: [
          Tab(text: '메인'),
          Tab(text: '리뷰'),
          Tab(text: '사진'),
          Tab(text: '여행')
        ]));
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(oldDelegate) => false;
}
