import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/travel_list_view.dart';
import 'package:yeohaeng_ttukttak/utils/snackbar.dart';

class PlaceSummaryView extends StatelessWidget {
  final TabController tabController;
  final Place place;

  const PlaceSummaryView(
      {super.key, required this.tabController, required this.place});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PlaceDetailViewModel>();
    final state = viewModel.state;
    TextTheme textTheme = Theme.of(context).textTheme;
    DateTime now = DateTime.now();

    final mapViewModel = context.watch<MapViewModel>();
    final detail = mapViewModel.dataState.placeDetails[place.googlePlaceId];

    if (detail == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          margin: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (detail.address != null)
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              child: const Icon(Icons.place_outlined)),
                          Container(
                              margin: const EdgeInsets.only(right: 5.0),
                              child: Text(detail.address!,
                                  style: textTheme.bodyLarge)),
                          Material(
                            child: InkWell(
                              borderRadius: BorderRadius.circular(5),
                              onTap: () => viewModel.onEvent(
                                  PlaceDetailEvent.copyText(detail.address)),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text("복사",
                                    style: textTheme.bodyLarge
                                        ?.copyWith(color: Colors.blue)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  if (detail.businessHours != null &&
                      detail.isOpeningNow != null)
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: ExpansionPanelList(
                        expandedHeaderPadding: EdgeInsets.zero,
                        materialGapSize: 0,
                        elevation: 0,
                        expansionCallback: (_, isExpanded) => viewModel.onEvent(
                            const PlaceDetailEvent
                                .toggleBusinessHourExpanded()),
                        children: [
                          ExpansionPanel(
                              headerBuilder: (context, isExpanded) => Row(
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.only(
                                              right: 10.0),
                                          child: const Icon(
                                              Icons.access_time_outlined)),
                                      Expanded(
                                        child: RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                              text: detail.isOpeningNow!
                                                  ? "영업 중 · "
                                                  : "영업 종료 · ",
                                              style: textTheme.bodyLarge
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w600)),
                                          TextSpan(
                                              text: detail.businessHours![
                                                      now.weekday - 1]
                                                  .split(": ")[1],
                                              style: textTheme.bodyLarge)
                                        ])),
                                      ),
                                    ],
                                  ),
                              body: ListTile(
                                title: ListView.separated(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) => Text(
                                      "• ${detail.businessHours![index]}",
                                      style: textTheme.bodyLarge),
                                  separatorBuilder: (context, _) =>
                                      const SizedBox(height: 12),
                                  itemCount: 7,
                                ),
                              ),
                              isExpanded: state.isBusinessHourExpanded)
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
                          Expanded(
                            child: Linkify(
                                onOpen: (link) => viewModel.onEvent(
                                    PlaceDetailEvent.launchURL(link.url)),
                                text: detail.siteURL!,
                                style: textTheme.bodyLarge?.copyWith(
                                    color: Colors.blue,
                                    decorationColor: Colors.blue)),
                          ),
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
                              child: Text(detail.phoneNumber!,
                                  style: textTheme.bodyLarge)),
                          Material(
                            child: InkWell(
                              borderRadius: BorderRadius.circular(5),
                              onTap: () => viewModel.onEvent(
                                  PlaceDetailEvent.copyText(
                                      detail.phoneNumber)),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text("복사",
                                    style: textTheme.bodyLarge
                                        ?.copyWith(color: Colors.blue)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              Divider(
                color: Theme.of(context).colorScheme.outlineVariant,
                thickness: 3.0,
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("사진",
                                style: textTheme.titleLarge
                                    ?.copyWith(fontWeight: FontWeight.w600)),
                            TextButton(
                                onPressed: () => tabController.animateTo(1),
                                child: Text(
                                  "더보기",
                                  style: textTheme.bodyMedium,
                                ))
                          ],
                        ),
                        Container(
                            height: 144,
                            margin: const EdgeInsets.only(top: 10.0),
                            child: ListView.separated(
                              shrinkWrap: true,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 8),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: index < place.images.length
                                        ? Image.network(
                                            place.images[index].small,
                                            width: 144,
                                            height: 144,
                                            fit: BoxFit.cover,
                                          )
                                        : Container(
                                            width: 144,
                                            height: 144,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondaryContainer,
                                          ),
                                  ),
                                );
                              },
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Divider(
                color: Theme.of(context).colorScheme.outlineVariant,
                thickness: 3.0,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("리뷰",
                            style: textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.w600)),
                        TextButton(
                            onPressed: () => tabController.animateTo(2),
                            child: Text(
                              "더보기",
                              style: textTheme.bodyMedium,
                            ))
                      ],
                    ),
                    ListView.separated(
                      padding: const EdgeInsets.only(top: 10.0),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(radius: 22),
                              const SizedBox(width: 10),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "사용자 이름",
                                    style: textTheme.bodyLarge,
                                  ),
                                  SizedBox(
                                    height: 12,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                              text: " 4.5",
                                              style: textTheme.bodySmall
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w600)),
                                          TextSpan(
                                              text: " / 5.0 2023.11.10",
                                              style: textTheme.bodySmall)
                                        ]))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                              "여기에는 구글 리뷰 내용이 들어갑니다. 힘들 경우에는 자체 리뷰로 대체할 수 있습니다."),
                          const SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                      itemCount: 3,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              Divider(
                color: Theme.of(context).colorScheme.outlineVariant,
                thickness: 3.0,
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("여행",
                                style: textTheme.titleLarge
                                    ?.copyWith(fontWeight: FontWeight.w600)),
                            TextButton(
                                onPressed: () => tabController.animateTo(3),
                                child: Text(
                                  "더보기",
                                  style: textTheme.bodyMedium,
                                ))
                          ],
                        ),
                        Container(
                            height: 220,
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(top: 10.0),
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: min(place.travels.length, 3),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 8),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  child: TravelWidget(
                                      width: 280.0,
                                      travel: place.travels[index]),
                                );
                              },
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
