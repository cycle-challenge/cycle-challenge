import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:provider/provider.dart';

import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';

class PlaceSummarySection extends StatelessWidget {
  final Place place;

  const PlaceSummarySection({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PlaceDetailViewModel>();
    final state = viewModel.state;

    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    DateTime now = DateTime.now();

    final mapViewModel = context.watch<MapViewModel>();
    final detail = mapViewModel.dataState.placeDetails[place.googlePlaceId];

    if (detail == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Container(
        padding: const EdgeInsets.only(top: 30.0),
        color: colorScheme.surface,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          ListTile(
              leading: const Icon(Icons.place_outlined),
              title: Text(detail.address ?? '정보 없음'),
              trailing: TextButton(
                  onPressed: () => viewModel
                      .onEvent(PlaceDetailEvent.copyText(detail.address)),
                  child: Text(
                    "복사",
                    style: textTheme.bodyLarge?.copyWith(color: Colors.blue),
                  ))),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
                childrenPadding: const EdgeInsets.symmetric(horizontal: 30),
                expandedAlignment: Alignment.centerLeft,
                leading: const Icon(Icons.access_time_outlined),
                title: (detail.businessHours != null &&
                        detail.isOpeningNow != null)
                    ? Row(children: [
                        Text((detail.isOpeningNow! ? "영업 중 · " : "영업 종료 · "),
                            style: textTheme.bodyLarge
                                ?.copyWith(fontWeight: FontWeight.w600)),
                        Text(
                            detail.businessHours![now.weekday - 1]
                                .split(": ")[1],
                            style: textTheme.bodyLarge)
                      ])
                    : const Text('정보 없음'),
                children: [
                  for (var businessHour in detail.businessHours!) ...[
                    Text("• $businessHour", style: textTheme.bodyLarge),
                    const SizedBox(height: 12),
                  ],
                ]),
          ),
          ListTile(
              leading: const Icon(Icons.language_outlined),
              title: (detail.siteURL != null)
                  ? Linkify(
                      onOpen: (link) => viewModel
                          .onEvent(PlaceDetailEvent.launchURL(link.url)),
                      text: detail.siteURL!,
                      style: textTheme.bodyLarge?.copyWith(
                          color: Colors.blue, decorationColor: Colors.blue))
                  : const Text('정보 없음')),
          ListTile(
              leading: const Icon(Icons.phone_outlined),
              title: Text(detail.phoneNumber ?? '제공되지 않음'),
              trailing: TextButton(
                  onPressed: () => viewModel
                      .onEvent(PlaceDetailEvent.copyText(detail.phoneNumber)),
                  child: Text("복사",
                      style:
                          textTheme.bodyLarge?.copyWith(color: Colors.blue)))),
          Container(
              margin: const EdgeInsets.fromLTRB(24, 16, 16, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/image/google_logo_small.png',
                        width: 64, fit: BoxFit.fitWidth),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.edit, size: 16),
                        label: const Text('정보 수정 제안'))
                  ]))
        ]));
  }
}
