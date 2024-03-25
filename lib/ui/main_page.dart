import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/navigation_state.dart';
import 'package:yeohaeng_ttukttak/states/travel_view_model.dart';
import 'package:yeohaeng_ttukttak/ui/main/custom_google_map/my_location_button_widget.dart';
import 'package:yeohaeng_ttukttak/ui/place/place_list_view.dart';
import 'package:yeohaeng_ttukttak/ui/place/bottom_sheet_widget.dart';
import 'package:yeohaeng_ttukttak/ui/place/place_type_filter_widget.dart';
import 'package:yeohaeng_ttukttak/ui/main/custom_google_map/map_search_bar.dart';
import 'package:yeohaeng_ttukttak/ui/main/custom_google_map/search_nearby_button_widget.dart';
import 'package:yeohaeng_ttukttak/utils/snackbar.dart';

import '../data/models/place_model.dart';
import 'main/custom_google_map.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    bool isSheetShown = context.watch<BottomSheetState>().isSheetShown;
    bool isExpanded = context.watch<BottomSheetState>().isExpanded;
    bool isPlaceSelected = context.watch<TravelViewModel>().isSelected;

    PlaceModel? selectedPlace = context.watch<TravelViewModel>().selectedPlace;

    TabController tabController = TabController(length: 4, vsync: this);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading:
            (isSheetShown && context.watch<NavigationState>().stack.isNotEmpty)
                ? IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => popNavigate(context),
                )
                : null,
        title: (isSheetShown && isExpanded && isPlaceSelected)
            ? Text(selectedPlace?.name ?? "")
            : const MapSearchBar(),
        backgroundColor: (isSheetShown && isExpanded)
            ? Theme.of(context).colorScheme.surface
            : Theme.of(context).colorScheme.surface.withOpacity(0.0),
        scrolledUnderElevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(51.0),
          child: (isSheetShown && isExpanded && isPlaceSelected)
              ? TabBar(
                  controller: tabController,
                  tabs: const [
                    Tab(text: "메인"),
                    Tab(text: "사진"),
                    Tab(text: "리뷰"),
                    Tab(text: "여행")
                  ],
                )
              : const PlaceTypeFilterWidget(),
        ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        context.read<BottomSheetState>().maxHeight =
            constraints.maxHeight - MediaQuery.of(context).padding.top;

        return Stack(children: [
          CustomGoogleMap(),
          const SafeArea(
              child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SearchNearbyButtonWidget(),
              ],
            ),
          )),
          const MyLocationButtonWidget(),
          if (isSheetShown) const BottomSheetWidget()
        ]);
      }),
      floatingActionButton: isSheetShown && isPlaceSelected
          ? FloatingActionButton(
              onPressed: () {},
              elevation: 0,
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              child: Icon(Icons.bookmark_outline,
                  color: Theme.of(context).colorScheme.onSurface),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: context.watch<TravelViewModel>().isSelected
          ? BottomAppBar(
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
                        if (!context.read<BottomSheetState>().isExpanded) {
                          pushNavigate(context);
                          context.read<BottomSheetState>().expand();
                          return;
                        }
                        String? phoneNumber = context
                            .read<TravelViewModel>()
                            .selectedPlace
                            ?.detail
                            ?.phoneNumber;

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
            )
          : NavigationBar(
              onDestinationSelected: (index) {
                context.read<BottomSheetState>().init();

                if (index == 1) {
                  pushNavigate(context);
                  context.read<BottomSheetState>().setIsSheetShown(true);
                }
                context.read<NavigationState>().setSelectedIndex(index);
              },
              selectedIndex: context.watch<NavigationState>().selectedIndex,
              surfaceTintColor: Theme.of(context).colorScheme.surface,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.map),
                  label: '주변',
                ),
                NavigationDestination(
                  icon: Icon(Icons.place),
                  label: '관광지',
                ),
                NavigationDestination(
                  icon: Icon(Icons.flight),
                  label: '여행',
                ),
                NavigationDestination(
                  icon: Icon(
                    Icons.bookmark,
                  ),
                  label: '저장',
                ),
                NavigationDestination(
                  icon: Icon(Icons.account_circle),
                  label: '프로필',
                ),
              ],
            ),
    );
  }
}
