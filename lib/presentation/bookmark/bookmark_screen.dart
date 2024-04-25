import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/components/place_bookmark_item.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/components/place_bookmark_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/components/travel_bookmark_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_page.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_screen.dart';

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
          backgroundColor: state.isEditing
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.secondaryContainer,
          child: Icon(state.isEditing ? Icons.check : Icons.edit,
              color: state.isEditing
                  ? Theme.of(context).colorScheme.onSecondary
                  : Theme.of(context).colorScheme.onSecondaryContainer),
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
                        ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class TravelBookmarkItem extends StatelessWidget {
  final TravelModel travel;

  const TravelBookmarkItem({super.key, required this.travel});

  @override
  Widget build(BuildContext context) {
    TextStyle? titleLarge = Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(color: Colors.white, fontSize: 20);
    TextStyle? bodyMedium =
        Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TravelDetailPage(
                  travel: travel,
                )));
      },
      child: Container(
        width: double.infinity,
        height: 240,
        constraints: const BoxConstraints(maxWidth: 480),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(travel.thumbnail.medium),
                          fit: BoxFit.cover))),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.75),
                      ]),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      travel.name,
                      style: titleLarge?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: travel.nickname,
                          style: bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600)),
                      TextSpan(
                          text:
                              " · ${travel.ageGroup.label} · ${travel.transport.label}")
                    ]))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
