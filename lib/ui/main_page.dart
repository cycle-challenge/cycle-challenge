import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/navigation_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';
import 'package:yeohaeng_ttukttak/ui/main/custom_google_map/my_location_button_widget.dart';
import 'package:yeohaeng_ttukttak/ui/main/bottom_sheet_widget.dart';
import 'package:yeohaeng_ttukttak/ui/main/custom_google_map/place_type_filter_widget.dart';
import 'package:yeohaeng_ttukttak/ui/main/custom_google_map/map_search_bar.dart';
import 'package:yeohaeng_ttukttak/ui/main/custom_google_map/search_nearby_button_widget.dart';
import 'package:yeohaeng_ttukttak/ui/main/place/place_simple_view.dart';
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
    bool isSheetShown = getIsSheetShown(context);
    bool isExpanded = context.watch<BottomSheetState>().isExpanded;

    final viewModel = context.watch<PlaceViewModel>();

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
        title: const MapSearchBar(),
        backgroundColor: (isSheetShown && isExpanded)
            ? Theme.of(context).colorScheme.surface
            : Theme.of(context).colorScheme.surface.withOpacity(0.0),
        scrolledUnderElevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(51.0),
          child: PlaceTypeFilterWidget(),
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
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SearchNearbyButtonWidget(),
                  ],
                ),
              ],
            ),
          )),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const MyLocationButtonWidget(),
                const SizedBox(height: 20,),
                if (isSheetShown) const BottomSheetWidget(),
                if (viewModel.isSelected) PlaceSimpleView(place: viewModel.selectedPlace)
              ],
            ),
          )
        ]);
      }),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          context.read<BottomSheetState>().clear();
          pushNavigate(context);
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
