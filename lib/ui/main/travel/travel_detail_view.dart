import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/visit/bound.dart';
import 'package:yeohaeng_ttukttak/states/travel_detail_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/json.dart';
import 'package:yeohaeng_ttukttak/utils/snackbar.dart';

class TravelDetailView extends StatelessWidget {
  final TravelModel travel;

  TravelDetailView({super.key, required this.travel});

  GoogleMapController? _controller;

  @override
  Widget build(BuildContext context) {
    TravelDetailViewModel viewModel = context.watch<TravelDetailViewModel>();

    int index = context.watch<TravelDetailViewModel>().index;

    bool isDarkMode =
        MediaQuery.platformBrightnessOf(context) == Brightness.dark;

    TextStyle? titleLarge =
        Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white);

    TextStyle? bodyMedium =
        Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white);

    DailyVisitSummary? summary = context.watch<TravelDetailViewModel>().summary;

    VisitModel? visit = context.watch<TravelDetailViewModel>().visit;
    var visitIndex = context.watch<TravelDetailViewModel>().visitIndex;

    if (_controller != null && summary != null) {
      if (viewModel.zoomLevel == 0) {
        Bound entire = summary.bound.entire;

        LatLngBounds bounds = LatLngBounds(
            southwest:
                LatLng(entire.southwest.latitude, entire.southwest.longitude),
            northeast:
                LatLng(entire.northeast.latitude, entire.northeast.longitude));

        _controller?.moveCamera(CameraUpdate.newLatLngBounds(bounds, 100));
      } else if (viewModel.zoomLevel == 1) {
        Bound bound = summary.bound.visits[visitIndex];

        LatLngBounds bounds = LatLngBounds(
            southwest:
                LatLng(bound.southwest.latitude, bound.southwest.longitude),
            northeast:
                LatLng(bound.northeast.latitude, bound.northeast.longitude));

        _controller?.moveCamera(CameraUpdate.newLatLngBounds(bounds, 100));

        _controller?.getZoomLevel().then((value) {
          if (value > 14.0) {
            _controller?.moveCamera(CameraUpdate.zoomTo(14.0));
          }
        });
      } else if (viewModel.zoomLevel == 2) {
        Bound bound = summary.bound.visits[visitIndex];

        LatLngBounds bounds = LatLngBounds(
            southwest:
                LatLng(bound.southwest.latitude, bound.southwest.longitude),
            northeast:
                LatLng(bound.northeast.latitude, bound.northeast.longitude));

        _controller?.moveCamera(CameraUpdate.newLatLngBounds(bounds, 100));
      }
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64),
        child: AppBar(
          centerTitle: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${index + 1}일 차",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w600)),
              Text(
                travel.name,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.copy),
                  )),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                GoogleMap(
                  zoomGesturesEnabled: false,
                  scrollGesturesEnabled: false,
                  tiltGesturesEnabled: false,
                  rotateGesturesEnabled: false,
                  zoomControlsEnabled: false,
                  myLocationButtonEnabled: false,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(36.6272, 127.4987),
                    zoom: 13,
                  ),
                  onMapCreated: (GoogleMapController controller) async {
                    String path = isDarkMode
                        ? "assets/map/map_style_dark.json"
                        : "assets/map/map_style.json";
                    controller.setMapStyle(await getJsonFile(path));
                    _controller = controller;
                  },
                  markers: context
                          .watch<TravelDetailViewModel>()
                          .markers
                          .isNotEmpty
                      ? context.watch<TravelDetailViewModel>().markers[index]
                      : {},
                  polylines: context.watch<TravelDetailViewModel>().polylines,
                ),
                Positioned(
                    bottom: 20,
                    right: 15,
                    child: Wrap(
                      direction: Axis.vertical,
                      children: [
                        IconButton(
                          onPressed:
                              context.watch<TravelDetailViewModel>().canZoomIn
                                  ? () => {
                                        if (viewModel.canZoomIn)
                                          viewModel.zoomLevel++
                                      }
                                  : null,
                          icon: const Icon(Icons.add),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.surface)),
                        ),
                        IconButton(
                          onPressed:
                              context.watch<TravelDetailViewModel>().canZoomOut
                                  ? () => {
                                        if (viewModel.canZoomOut)
                                          viewModel.zoomLevel--
                                      }
                                  : null,
                          icon: const Icon(Icons.remove),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.surface)),
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 240,
            child: Stack(
              children: [
                CarouselSlider.builder(
                    itemCount: visit == null ? 0 : visit.images.length,
                    itemBuilder: (context, index, realIndex) => InkWell(
                          onTap: () {
                            if (visit == null || visit.images.isEmpty) {
                              return showSnackbar(context, "이미지가 존재하지 않습니다.");
                            }

                            List<NetworkImage>? images = visit.images
                                .map((e) => NetworkImage(e.large))
                                .toList();

                            showImageViewerPager(
                                context,
                                useSafeArea: true,
                                MultiImageProvider(images,
                                    initialIndex: index));
                          },
                          child: Stack(
                            children: [
                              if (visit != null && visit.images.isNotEmpty)
                                Image.network(
                                  width: double.maxFinite,
                                  height: double.maxFinite,
                                  visit.images[index].medium ?? "",
                                  fit: BoxFit.fitWidth,
                                  errorBuilder: (context, exception, trace) =>
                                      Image.asset("assets/image/default.png",
                                          fit: BoxFit.cover),
                                ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black.withOpacity(0.1),
                                        Colors.black.withOpacity(0.75),
                                      ]),
                                ),
                              ),
                              Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  padding: const EdgeInsets.all(18),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        visit?.place.name ?? "",
                                        style: titleLarge?.copyWith(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: visit?.place.type.label,
                                            style: bodyMedium?.copyWith(
                                                fontWeight: FontWeight.w600)),
                                        TextSpan(
                                            text:
                                                " · 사진 ${visit?.images.length ?? 0}장")
                                      ])),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                    options: CarouselOptions(
                        scrollDirection: Axis.horizontal,
                        viewportFraction: 1,
                        enlargeCenterPage: true,
                        onPageChanged: (index, _) {
                          viewModel.imageIndex = index;
                        })),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.only(right: 20.0, bottom: 20.0),
                  child: AnimatedSmoothIndicator(
                    activeIndex:
                        context.watch<TravelDetailViewModel>().imageIndex,
                    count: visit?.images.length ?? 0,
                    effect: const ExpandingDotsEffect(
                        dotHeight: 6,
                        dotWidth: 6,
                        activeDotColor: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        child: Row(
          children: [
            TextButton(
                onPressed: context.watch<TravelDetailViewModel>().hasPrev
                    ? () {
                        viewModel.prev();
                      }
                    : null,
                child: const Text("어제")),
            TextButton(
                onPressed: context.watch<TravelDetailViewModel>().hasPrevVisit
                    ? () => viewModel.prevVisit()
                    : null,
                child: const Text("이전")),
            TextButton(
                onPressed: context.watch<TravelDetailViewModel>().hasNextVisit
                    ? () async {
                        viewModel.nextVisit();
                      }
                    : null,
                child: const Text("다음")),
            TextButton(
                onPressed: context.watch<TravelDetailViewModel>().hasNext
                    ? () => viewModel.next()
                    : null,
                child: const Text("내일")),
          ],
        ),
      ),
    );
  }
}

class TravelDetailPage extends StatelessWidget {
  final TravelModel travel;

  const TravelDetailPage({super.key, required this.travel});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TravelDetailViewModel>(
        create: (context) => TravelDetailViewModel(context, travel.id),
        child: TravelDetailView(travel: travel));
  }
}
