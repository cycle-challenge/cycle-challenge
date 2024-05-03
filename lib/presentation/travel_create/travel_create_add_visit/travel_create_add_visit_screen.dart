import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_add_visit/components/place_selectable_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_add_visit/components/place_type_filter_item.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_add_visit/travel_create_add_visit_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_add_visit/travel_create_add_visit_view_model.dart';

class TravelCreateAddVisitScreen extends StatelessWidget {
  const TravelCreateAddVisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TravelCreateAddVisitViewModel>();
    final state = viewModel.state;

    final bookmarkViewModel = context.watch<BookmarkViewModel>();
    final bookmarkState = bookmarkViewModel.state;

    final places = state.placeFilter.apply(bookmarkState.places);

    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(centerTitle: false, title: const Text('관광지 추가하기')),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 38,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 12),
                  children: [
                    for (PlaceType type in PlaceType.values) ...[
                      PlaceTypeFilterItem(type: type),
                      const SizedBox(width: 6)
                    ]
                  ]),
            ),
            const SizedBox(height: 24),
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    itemCount: places.length,
                    itemBuilder: (context, index) =>
                        PlaceSelectableListItem(place: places[index]))),
            Container(
                width: double.maxFinite,
                height: 48,
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: colorScheme.surface,
                        backgroundColor: colorScheme.onSurface,
                        elevation: 0),
                    onPressed: state.selectedPlaces.isNotEmpty
                        ? () {
                          Navigator.of(context)
                            .pop<List<Place>>(state.selectedPlaces);
                        }
                        : null,
                    child: const Text("추가하기"))),
          ],
        ),
      ),
    );
  }
}
