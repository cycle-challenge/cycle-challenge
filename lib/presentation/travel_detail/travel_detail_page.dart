
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_view_model.dart';

class TravelDetailPage extends StatelessWidget {
  final TravelModel travel;

  const TravelDetailPage({super.key, required this.travel});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TravelDetailViewModel>(
        create: (context) => TravelDetailViewModel(
            travel.id,
            context.read<TravelRepository>(),
            context.read<StreamController<MainUiEvent>>()),
        child: TravelDetailScreen(travel: travel));
  }
}
