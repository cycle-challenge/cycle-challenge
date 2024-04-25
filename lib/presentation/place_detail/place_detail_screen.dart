import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary_view.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_image_view.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/travel_list_view.dart';

class PlaceDetailScreen extends StatefulWidget {
  final PlaceModel place;

  const PlaceDetailScreen({super.key, required this.place});

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    final viewModel = context.read<PlaceDetailViewModel>();
    _tabController = TabController(length: 4, vsync: this);

    _subscription = viewModel.stream.listen((event) => event.when(
        addImages: (_, __) {},
        addLastImages: (_) {},
        showSnackBar: (message) {
          final snackBar = SnackBar(
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              content:
                  Text(message, style: Theme.of(context).textTheme.bodyLarge));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }));
  }

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PlaceDetailViewModel>();
    final state = viewModel.state;

    if (state.placeDetail == null) {
      return const Center(child: CircularProgressIndicator());
    }

    final bookmarkViewModel = context.watch<BookmarkViewModel>();
    bool isBookmarked = bookmarkViewModel.state.placeIdSet.contains(widget.place.id);

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
          PlaceSummaryView(
            place: widget.place,
            tabController: _tabController,
          ),
          PlaceImageView(place: widget.place),
          Container(),
          TravelListView(travels: widget.place.travels ?? [])
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: isBookmarked
            ? () => bookmarkViewModel.onEvent(
            BookmarkEvent.deletePlace(widget.place))
            : () => bookmarkViewModel.onEvent(
            BookmarkEvent.addPlace(widget.place)),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        child: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
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
                onPressed: () => viewModel.onEvent(
                    PlaceDetailEvent.callPhone(state.placeDetail?.phoneNumber)))
          ],
        ),
      ),
    );
  }
}
