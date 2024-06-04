import 'dart:async';
import 'dart:io';

import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/snackbar.dart';

class PlaceImageView extends StatefulWidget {
  final Place place;

  const PlaceImageView({super.key, required this.place});

  @override
  State<PlaceImageView> createState() => _PlaceImageViewState();
}

class _PlaceImageViewState extends State<PlaceImageView> {
  static const _pageSize = 20;

  final PagingController<int, ImageModel> _pagingController =
      PagingController(firstPageKey: 1);

  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();
    final viewModel = context.read<PlaceDetailViewModel>();

    _pagingController.addPageRequestListener((pageKey) {
      viewModel.onEvent(
          PlaceDetailEvent.fetchImage(widget.place.id, pageKey, _pageSize));
    });
    _subscription = viewModel.stream.listen((event) => event.when(
        addImages: (images, nextPageNumber) =>
            _pagingController.appendPage(images, nextPageNumber),
        addLastImages: (images) => _pagingController.appendLastPage(images)));
  }

  @override
  void dispose() {
    _pagingController.dispose();
    _subscription?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PagedGridView<int, ImageModel>(
      pagingController: _pagingController,
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

                  showImageViewerPager(
                      context,
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
