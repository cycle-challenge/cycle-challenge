import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_view_model.dart';

class TravelCreatePage extends StatelessWidget {
  final Travel travel;

  const TravelCreatePage({super.key, required this.travel});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TravelCreateViewModel>(
        create: (context) => TravelCreateViewModel(),
        child: TravelCreateScreen(travel: travel));
  }
}
