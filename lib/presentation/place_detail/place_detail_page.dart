import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';

class PlaceDetailPage extends StatelessWidget {
  final Place place;

  const PlaceDetailPage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();

    final state = viewModel.dataState;

    if (!state.placeDetails.containsKey(place.googlePlaceId)) {
      viewModel.onEvent(MapEvent.getPlaceDetail(place));
    }

    return ChangeNotifierProvider(
      create: (context) => PlaceDetailViewModel(context.read<UseCases>(),
          context.read<StreamController<MainUiEvent>>(),
          place: place),
      child: PlaceDetailScreen(place: place),
    );
  }
}
