import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:ntp/ntp.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yeohaeng_ttukttak/data/models/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/data/models/place_type.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';

import '../../data/models/place_model.dart';

class PlaceViewSheet extends StatelessWidget {
  double prevScrollOffset = -1.0;

  PlaceViewSheet({super.key});

  @override
  Widget build(BuildContext context) {
    bool isExpanded = context.read<BottomSheetState>().isExpanded;

    return GestureDetector(
        onVerticalDragUpdate: (details) {
          double? delta = details.primaryDelta;
          if (delta == null) return;

          bool isExpanded = context.read<BottomSheetState>().isExpanded;

          if (!isExpanded && delta < 0) {
            context.read<BottomSheetState>().expand();
          }

          if (isExpanded && delta > 0) {
            context.read<BottomSheetState>().reduce();
          }
        },
        child: AnimatedContainer(
          width: MediaQuery.of(context).size.width,
          height: context.watch<BottomSheetState>().height,
          constraints: const BoxConstraints(
            maxWidth: 500,
          ),
          onEnd: () {
            if (context.read<BottomSheetState>().isAnimating) {
              context.read<BottomSheetState>().setIsAnimating(false);
            }
          },
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: isExpanded
                  ? null
                  : const BorderRadius.vertical(top: Radius.circular(20))),
          duration: const Duration(milliseconds: 400),
          child: isExpanded ? PlaceDetailView() : PlaceSimpleView(),
        ));
  }
}

class PlaceDetailView extends StatelessWidget {
  Future<DateTime> _getPlaceDetail(BuildContext context) async {
    await context.read<PlaceViewModel>().getDetail();
    return await NTP.now();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getPlaceDetail(context),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData)
          return const Center(child: CircularProgressIndicator());

        DateTime now = snapshot.data;

        PlaceDetail? detail =
            context.watch<PlaceViewModel>().selectedPlace?.detail;

        if (detail == null) return const SizedBox();

        TextStyle? bodyLarge = Theme.of(context).textTheme.bodyLarge;

        return Container(
          width: MediaQuery.of(context).size.width * 1.0,
          margin: const EdgeInsets.symmetric(vertical: 30.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                if (detail.address != null)
                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            child: const Icon(Icons.place_outlined)),
                        Container(margin: EdgeInsets.only(right: 5.0),child: Text(detail.address!, style: bodyLarge)),
                        Material(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(5),
                            onTap: () async {
                              await Clipboard.setData(
                                  ClipboardData(text: detail.address!));
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                                      duration: const Duration(milliseconds: 2000),
                                      content: Text("성공적으로 복사되었습니다.",
                                          style: bodyLarge)));
                            },
                            child: Container(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 5.0),

                              child: Text("복사",
                                  style:
                                  bodyLarge?.copyWith(color: Colors.blue)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                if (detail.businessHours != null && detail.isOpeningNow != null)
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            child: const Icon(Icons.access_time_outlined)),
                        Text(detail.isOpeningNow! ? "영업 중 · " : "영업 종료 · ",
                            style: bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600)),
                        Text(detail.businessHours![now.weekday - 1],
                            style: bodyLarge)
                      ],
                    ),
                  ),
                if (detail.siteURL != null)
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            child: const Icon(Icons.language_outlined)),
                        Linkify(
                            onOpen: (link) async {
                              if (!await launchUrl(Uri.parse(link.url))) {
                                throw Exception('Could not launch ${link.url}');
                              }
                            },
                            text: detail.siteURL!,
                            style: bodyLarge?.copyWith(
                                color: Colors.blue,
                                decorationColor: Colors.blue)),
                      ],
                    ),
                  ),
                if (detail.phoneNumber != null)
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            child: const Icon(Icons.phone_outlined)),
                        Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            child: Text(detail.phoneNumber!, style: bodyLarge)),
                        Material(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(5),
                            onTap: () async {
                              await Clipboard.setData(
                                  ClipboardData(text: detail.phoneNumber!));
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                                      duration: const Duration(milliseconds: 2000),
                                      content: Text("성공적으로 복사되었습니다.",
                                          style: bodyLarge)));
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text("복사",
                                  style:
                                      bodyLarge?.copyWith(color: Colors.blue)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}

class PlaceSimpleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PlaceModel? place = context.read<PlaceViewModel>().selectedPlace;
    if (place == null) return const SizedBox();

    String distance = place.location.distance.toStringAsFixed(1).toString();
    String type = placeTypeMap[place.type]?.label ?? place.type;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 24, bottom: 12),
            width: 25,
            height: 4,
            decoration: BoxDecoration(
              color: context.watch<BottomSheetState>().isExpanded
                  ? Theme.of(context).colorScheme.surface
                  : Theme.of(context).colorScheme.outline,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: const BoxConstraints(maxWidth: 230),
                    child: Text(place.name,
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                  Text('$distance km · $type',
                      style: Theme.of(context).textTheme.labelLarge)
                ],
              ),
              Container(
                  height: 120,
                  margin: const EdgeInsets.only(top: 10.0),
                  child: ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: place.images.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 8),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            place.images[index].small,
                            width: 120.0,
                            height: 120.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  )),
            ],
          ),
        )
      ],
    );
  }
}
