import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/components/place_bookmark_item.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/components/place_bookmark_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/components/travel_bookmark_item.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/components/travel_bookmark_list_item.dart';
import 'package:yeohaeng_ttukttak/utils/widget.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<BookmarkViewModel>();
    final state = viewModel.state;

    final colorTheme = Theme.of(context).colorTheme;

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
                scrolledUnderElevation: 0),
            floatingActionButton: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom),
                child: state.isEditing
                    ? FloatingActionButton(
                        child: const Icon(Icons.check),
                        onPressed: () => viewModel.onEvent(
                            const BookmarkEvent.endEdit())).invertColor(context)
                    : FloatingActionButton(
                        child: const Icon(Icons.edit),
                        onPressed: () => viewModel
                            .onEvent(const BookmarkEvent.startEdit()))),
            body: Column(children: [
              const TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: [Tab(text: '관광지'), Tab(text: '여행')]),
              Expanded(
                  child: FadeTabBarView(children: [
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
                AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: state.isEditing
                        ? ListView.separated(
                            padding: const EdgeInsets.symmetric(
                                vertical: 24.0, horizontal: 16.0),
                            itemCount: state.travels.length,
                            itemBuilder: (context, index) =>
                                TravelBookmarkListItem(
                                    travel: state.travels[index]),
                            separatorBuilder: (_, index) =>
                                const SizedBox(height: 16))
                        : SizedBox(
                            child: ListView.separated(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 24.0, horizontal: 16.0),
                                itemCount: state.travels.length,
                                itemBuilder: (context, index) =>
                                    TravelBookmarkItem(
                                        travel: state.travels[index]),
                                separatorBuilder: (_, index) =>
                                    const SizedBox(height: 16)),
                          ))
              ]))
            ])));
  }
}

class FadeTabBarView extends StatelessWidget {
  final List<Widget> children;

  const FadeTabBarView({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: DefaultTabController.of(context),
        child: Builder(builder: (context) {
          return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) =>
                  FadeTransition(opacity: animation, child: child),
              child: children[context.watch<TabController>().index]);
        }));
  }
}
