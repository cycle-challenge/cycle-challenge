import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:ntp/ntp.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yeohaeng_ttukttak/data/models/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/navigation_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';

class PlaceDetailView extends StatelessWidget {
  Future<DateTime> _getPlaceDetail(BuildContext context) async {
    await context.read<PlaceViewModel>().getDetail();
    return await NTP.now();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        double? delta = details.primaryDelta;
        if (delta == null) return;

        bool isExpanded = context.read<BottomSheetState>().isExpanded;

        if (isExpanded && delta > 0) {
          popNavigate(context);
          context.read<BottomSheetState>().reduce();
        }
      },
      child: FutureBuilder(
        future: _getPlaceDetail(context),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

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
                          Container(
                              margin: const EdgeInsets.only(right: 5.0),
                              child: Text(detail.address!, style: bodyLarge)),
                          Material(
                            child: InkWell(
                              borderRadius: BorderRadius.circular(5),
                              onTap: () async {
                                await Clipboard.setData(
                                    ClipboardData(text: detail.address!));
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor:
                                            Theme.of(context)
                                                .colorScheme
                                                .secondaryContainer,
                                        duration:
                                            const Duration(milliseconds: 2000),
                                        content: Text("성공적으로 복사되었습니다.",
                                            style: bodyLarge)));
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text("복사",
                                    style: bodyLarge?.copyWith(
                                        color: Colors.blue)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  if (detail.businessHours != null &&
                      detail.isOpeningNow != null)
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              child: const Icon(Icons.access_time_outlined)),
                          Text(
                              overflow: TextOverflow.ellipsis,
                              detail.isOpeningNow! ? "영업 중 · " : "영업 종료 · ",
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
                                  throw Exception(
                                      'Could not launch ${link.url}');
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
                              child:
                                  Text(detail.phoneNumber!, style: bodyLarge)),
                          Material(
                            child: InkWell(
                              borderRadius: BorderRadius.circular(5),
                              onTap: () async {
                                await Clipboard.setData(
                                    ClipboardData(text: detail.phoneNumber!));
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        backgroundColor:
                                            Theme.of(context)
                                                .colorScheme
                                                .secondaryContainer,
                                        duration:
                                            const Duration(milliseconds: 2000),
                                        content: Text("성공적으로 복사되었습니다.",
                                            style: bodyLarge)));
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text("복사",
                                    style: bodyLarge?.copyWith(
                                        color: Colors.blue)),
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
      ),
    );
  }
}
