import 'dart:io';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';

class PlaceImageView extends StatefulWidget {

  @override
  State<PlaceImageView> createState() => _PlaceImageViewState();
}

class _PlaceImageViewState extends State<PlaceImageView> {
  static const _pageSize = 20;

  final PagingController<int, ImageModel> _pagingController =
      PagingController(firstPageKey: 0);
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    _scrollController.addListener(() {
      bool canScrollUp = _scrollController.offset > 0;
      context.read<BottomSheetState>().setCanViewScrollUp(canScrollUp);
    });

    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final List<ImageModel> newItems = [];

      for (int i = pageKey; i < pageKey + _pageSize; i++) {
        newItems.add(ImageModel(id: i, small: "1", medium: "1", large: "1"));
      }

      final isLastPage = newItems.length < _pageSize;

      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.sync(
          () => _pagingController.refresh(),
      ),
      child: PagedGridView<int, ImageModel>(
        pagingController: _pagingController,
        scrollController: _scrollController,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        builderDelegate: PagedChildBuilderDelegate<ImageModel>(
            itemBuilder: (context, item, index) => ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(color: Colors.red,),

      )),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 185 / 180,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
        ),
      ),
    );
  }
}
