import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/travel_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/travel_view_model.dart';

class TravelPage extends StatelessWidget {

  final Travel travel;
  final DateTimeRange travelDates;

  const TravelPage({super.key, required this.travel, required this.travelDates});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
        create: (context) => TravelViewModel(context.read<UseCases>(),
            context.read<StreamController<MainUiEvent>>(),
            travelId: travel.id!,
            startedOn: travelDates.start,
            endedOn: travelDates.end),
        child: TravelScreen(travel: travel));
  }


}