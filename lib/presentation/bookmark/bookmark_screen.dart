import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/components/place_bookmark_item.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/components/place_bookmark_list_item.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<BookmarkViewModel>();
      _subscription = viewModel.stream
          .listen((event) => event.when(showSnackbar: _onShowSnackbar));
    });
  }

  void _onShowSnackbar(String message) {
    final snackBar = SnackBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        content: Text(message, style: Theme.of(context).textTheme.bodyLarge));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<BookmarkViewModel>();
    final state = viewModel.state;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("북마크",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w600)),
          scrolledUnderElevation: 0,
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
        floatingActionButton: FloatingActionButton(
          onPressed: state.isEditing
              ? () => viewModel.onEvent(const BookmarkEvent.endEdit())
              : () => viewModel.onEvent(const BookmarkEvent.startEdit()),
          backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          child: Icon(state.isEditing ? Icons.check : Icons.edit,
              color: Theme.of(context).colorScheme.onSecondaryContainer),
        ),
        body: Column(
          children: [
            const TabBar(
                tabs: [Tab(text: '관광지'), Tab(text: '여행')],
                indicatorSize: TabBarIndicatorSize.tab),
            Expanded(
              child: TabBarView(children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: state.isEditing
                      ? ListView.builder(
                          padding: const EdgeInsets.symmetric(
                              vertical: 24.0, horizontal: 16.0),
                          itemCount: state.places.length,
                          itemBuilder: (context, index) =>
                              PlaceBookmarkListItem(place: state.places[index]))
                      : GridView.builder(
                          padding: const EdgeInsets.symmetric(
                              vertical: 24.0, horizontal: 16.0),
                          itemCount: state.places.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 1,
                                  mainAxisSpacing: 12,
                                  crossAxisSpacing: 12),
                          itemBuilder: (context, index) =>
                              PlaceBookmarkItem(place: state.places[index])),
                ),
                Container(child: Text('여행')),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

