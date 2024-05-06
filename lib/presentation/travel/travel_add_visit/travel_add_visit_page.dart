
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_add_visit/travel_add_visit_screen.dart';

import 'travel_add_visit_view_model.dart';

class TravelAddVisitPage extends StatelessWidget {
  const TravelAddVisitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TravelAddVisitViewModel>(
      create: (_) => TravelAddVisitViewModel(),
      child: const TravelAddVisitScreen(),
    );
  }

}
