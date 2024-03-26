import 'dart:io';

import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/page_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/snackbar.dart';

class PlaceImageView extends StatefulWidget {
  @override
  State<PlaceImageView> createState() => _PlaceImageViewState();
}

class _PlaceImageViewState extends State<PlaceImageView> {
  static const _pageSize = 20;

  final PagingController<int, ImageModel> _pagingController =
      PagingController(firstPageKey: 1);
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
      final PageModel<ImageModel> page =
          await context.read<PlaceViewModel>().getImages(pageKey, _pageSize);

      if (!page.hasNextPage) {
        return _pagingController.appendLastPage(page.entities);
      }

      final int nextPageKey = pageKey + page.entities.length;
      return _pagingController.appendPage(page.entities, nextPageKey);
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
    return PagedGridView<int, ImageModel>(
      pagingController: _pagingController,
      scrollController: _scrollController,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      builderDelegate: PagedChildBuilderDelegate<ImageModel>(
          itemBuilder: (context, item, index) => InkWell(
                onTap: () {
                  List<NetworkImage>? images = _pagingController.itemList
                      ?.map((e) => NetworkImage(e.large))
                      .toList();

                  if (images == null) {
                    return showSnackbar(context, "이미지가 존재하지 않습니다.");
                  }

                  showImageViewerPager(context,
                      useSafeArea: true,
                      MultiImageProvider(images, initialIndex: index));

                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(item.medium, fit: BoxFit.cover),
                ),
              )),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 185 / 180,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
      ),
    );
  }
}
