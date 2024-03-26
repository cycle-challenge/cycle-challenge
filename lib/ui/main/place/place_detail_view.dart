import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:ntp/ntp.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/navigation_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';
import 'package:yeohaeng_ttukttak/ui/main/travel/travel_list_view.dart';
import 'package:yeohaeng_ttukttak/utils/snackbar.dart';

class PlaceDetailView extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  Future<DateTime> _getPlaceDetail(BuildContext context) async {
    await context.read<PlaceViewModel>().getDetail();
    return await NTP.now();
  }

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      bool canScrollUp = _controller.offset > 0;
      context.read<BottomSheetState>().setCanViewScrollUp(canScrollUp);
    });

    return FutureBuilder(
      future: _getPlaceDetail(context),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        DateTime now = snapshot.data;

        PlaceModel? place = context.watch<PlaceViewModel>().selectedPlace;
        PlaceDetail? detail =
            context.watch<PlaceViewModel>().selectedPlace?.detail;

        if (detail == null || place == null) return const SizedBox();

        TextStyle? bodyLarge = Theme.of(context).textTheme.bodyLarge;
        TextStyle? bodyMedium = Theme.of(context).textTheme.bodyMedium;
        TextStyle? bodySmall = Theme.of(context).textTheme.bodySmall;
        TextStyle? titleLarge = Theme.of(context).textTheme.titleLarge;

        TabController? controller = context.watch<BottomSheetState>().tabController;

        return TabBarView(
          controller: controller,
          children: [
            SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      constraints: const BoxConstraints(maxWidth: 380),
                      margin: const EdgeInsets.only(top: 30.0),
                      child: Column(
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
                                      child:
                                          Text(detail.address!, style: bodyLarge)),
                                  Material(
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(5),
                                      onTap: () async {
                                        await Clipboard.setData(
                                            ClipboardData(text: detail.address!));
                                        showSnackbar(context, "성공적으로 복사되었습니다.");
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
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
                              margin: const EdgeInsets.only(bottom: 10.0),
                              child: ExpansionPanelList(
                                expandedHeaderPadding: EdgeInsets.zero,
                                materialGapSize: 0,
                                expansionCallback: (_, isExpanded) => context
                                    .read<BottomSheetState>()
                                    .isBusinessHourExpanded = isExpanded,
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
                                                      style: bodyLarge?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text: detail.businessHours![
                                                              now.weekday - 1]
                                                          .split(": ")[1],
                                                      style: bodyLarge)
                                                ])),
                                              ),
                                            ],
                                          ),
                                      body: ListTile(
                                        title: ListView.separated(
                                          padding:
                                              const EdgeInsets.only(bottom: 12),
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) => Text(
                                              "• ${detail.businessHours![index]}",
                                              style: bodyLarge),
                                          separatorBuilder: (context, _) =>
                                              const SizedBox(height: 12),
                                          itemCount: 7,
                                        ),
                                      ),
                                      isExpanded: context
                                          .watch<BottomSheetState>()
                                          .isBusinessHourExpanded)
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
                                        onOpen: (link) async {
                                          if (!await launchUrl(
                                              Uri.parse(link.url))) {
                                            showSnackbar(
                                                context, "웹사이트에 접근할 수 없습니다.");
                                          }
                                        },
                                        text: detail.siteURL!,
                                        style: bodyLarge?.copyWith(
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
                                          style: bodyLarge)),
                                  Material(
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(5),
                                      onTap: () async {
                                        await Clipboard.setData(ClipboardData(
                                            text: detail.phoneNumber!));
                                        showSnackbar(context, "성공적으로 복사되었습니다.");
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Text("복사",
                                            style: bodyLarge?.copyWith(
                                                color: Colors.blue)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  DetailDivider(context),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        constraints: const BoxConstraints(maxWidth: 380),
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("사진",
                                    style: titleLarge?.copyWith(
                                        fontWeight: FontWeight.w600)),
                                TextButton(
                                    onPressed: () => controller?.animateTo(1),
                                    child: Text(
                                      "더보기",
                                      style: bodyMedium,
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
                  DetailDivider(context),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    constraints: const BoxConstraints(maxWidth: 380),
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("리뷰",
                                style: titleLarge?.copyWith(
                                    fontWeight: FontWeight.w600)),
                            TextButton(
                                onPressed: () => controller?.animateTo(2),
                                child: Text(
                                  "더보기",
                                  style: bodyMedium,
                                ))
                          ],
                        ),
                        ListView.separated(
                          padding: const EdgeInsets.only(top: 10.0),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Column(
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
                                        style: bodyLarge,
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
                                                  style: bodySmall?.copyWith(
                                                      fontWeight: FontWeight.w600)),
                                              TextSpan(
                                                  text: " / 5.0 2023.11.10",
                                                  style: bodySmall)
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
                  DetailDivider(context),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        constraints: const BoxConstraints(maxWidth: 380),
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("여행",
                                    style: titleLarge?.copyWith(
                                        fontWeight: FontWeight.w600)),
                                TextButton(
                                    onPressed: () => controller?.animateTo(3),
                                    child: Text(
                                      "더보기",
                                      style: bodyMedium,
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
                                  itemCount: place.travels.length,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(width: 8),
                                  itemBuilder: (BuildContext context, int index) {
                                    return TravelWidget(width: 280.0, travel: place.travels[index]);
                                  },
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(),
            SingleChildScrollView(),
            SingleChildScrollView()
          ],
        );
      },
    );
  }

  Container DetailDivider(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: Divider(
        color: Theme.of(context).colorScheme.outlineVariant,
        thickness: 3.0,
      ),
    );
  }
}
