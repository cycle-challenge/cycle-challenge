import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_image_view.dart';
import 'package:yeohaeng_ttukttak/ui/main/travel/travel_list_view.dart';
import 'package:yeohaeng_ttukttak/utils/snackbar.dart';

class PlaceDetailScreen extends StatefulWidget {
  final PlaceModel place;

  const PlaceDetailScreen({super.key, required this.place});

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PlaceDetailViewModel>();
    final state = viewModel.state;

    DateTime now = DateTime.now();

    if (state.placeDetail == null) {
      return const Center(child: CircularProgressIndicator());
    }

    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.place.name),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56.0),
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: "메인"),
              Tab(text: "사진"),
              Tab(text: "리뷰"),
              Tab(text: "여행")
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                margin: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 20.0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (state.placeDetail!.address != null)
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
                                    child: Text(state.placeDetail!.address!,
                                        style: textTheme.bodyLarge)),
                                Material(
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(5),
                                    onTap: () async {
                                      await Clipboard.setData(ClipboardData(
                                          text: state.placeDetail!.address!));
                                      showSnackbar(context, "성공적으로 복사되었습니다.");
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Text("복사",
                                          style: textTheme.bodyLarge
                                              ?.copyWith(color: Colors.blue)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        if (state.placeDetail!.businessHours != null &&
                            state.placeDetail!.isOpeningNow != null)
                          Container(
                            margin: const EdgeInsets.only(bottom: 10.0),
                            child: ExpansionPanelList(
                              expandedHeaderPadding: EdgeInsets.zero,
                              materialGapSize: 0,
                              elevation: 0,
                              expansionCallback: (_, isExpanded) =>
                                  viewModel.onEvent(const PlaceDetailEvent
                                      .toggleBusinessHourExpanded()),
                              children: [
                                ExpansionPanel(
                                    headerBuilder: (context, isExpanded) => Row(
                                          children: [
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    right: 10.0),
                                                child: const Icon(Icons
                                                    .access_time_outlined)),
                                            Expanded(
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    text: state.placeDetail!
                                                            .isOpeningNow!
                                                        ? "영업 중 · "
                                                        : "영업 종료 · ",
                                                    style: textTheme.bodyLarge
                                                        ?.copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                TextSpan(
                                                    text: state
                                                        .placeDetail!
                                                        .businessHours![
                                                            now.weekday - 1]
                                                        .split(": ")[1],
                                                    style: textTheme.bodyLarge)
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
                                            "• ${state.placeDetail!.businessHours![index]}",
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
                        if (state.placeDetail!.siteURL != null)
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
                                      text: state.placeDetail!.siteURL!,
                                      style: textTheme.bodyLarge?.copyWith(
                                          color: Colors.blue,
                                          decorationColor: Colors.blue)),
                                ),
                              ],
                            ),
                          ),
                        if (state.placeDetail!.phoneNumber != null)
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
                                    child: Text(state.placeDetail!.phoneNumber!,
                                        style: textTheme.bodyLarge)),
                                Material(
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(5),
                                    onTap: () async {
                                      await Clipboard.setData(ClipboardData(
                                          text:
                                              state.placeDetail!.phoneNumber!));
                                      showSnackbar(context, "성공적으로 복사되었습니다.");
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
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
                    DetailDivider(context),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("사진",
                                      style: textTheme.titleLarge?.copyWith(
                                          fontWeight: FontWeight.w600)),
                                  TextButton(
                                      onPressed: () =>
                                          _tabController.animateTo(1),
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
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(
                                        onTap: () {},
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child:
                                              index < widget.place.images.length
                                                  ? Image.network(
                                                      widget.place.images[index]
                                                          .small,
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
                                  onPressed: () => _tabController.animateTo(2),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                                FontWeight
                                                                    .w600)),
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
                            separatorBuilder: (context, index) =>
                                const SizedBox(
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
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("여행",
                                      style: textTheme.titleLarge?.copyWith(
                                          fontWeight: FontWeight.w600)),
                                  TextButton(
                                      onPressed: () =>
                                          _tabController.animateTo(3),
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
                                    itemCount:
                                        min(widget.place.travels.length, 3),
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(width: 8),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(
                                        child: TravelWidget(
                                            width: 280.0,
                                            travel:
                                                widget.place.travels[index]),
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
          ),
          PlaceImageView(place: widget.place),
          const SingleChildScrollView(),
          TravelListView(travels: widget.place.travels ?? [])
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        child: Icon(Icons.bookmark_outline,
            color: Theme.of(context).colorScheme.onSurface),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
            IconButton(
                icon: const Icon(Icons.phone),
                onPressed: () async {
                  String? phoneNumber = state.placeDetail?.phoneNumber;

                  if (phoneNumber == null) {
                    showSnackbar(context, "제공된 전화번호가 없습니다.");
                    return;
                  }

                  phoneNumber = Platform.isIOS
                      ? phoneNumber.replaceAll("-", "")
                      : phoneNumber;

                  if (!await canLaunch("tel:$phoneNumber")) {
                    showSnackbar(context, "전화를 걸 수 없습니다.");
                    return;
                  }
                  await launch("tel:$phoneNumber");
                })
          ],
        ),
      ),
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
