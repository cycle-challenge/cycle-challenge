
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_add_visit/travel_create_add_visit_screen.dart';

import 'travel_create_add_visit_view_model.dart';

class TravelCreateAddVisitPage extends StatelessWidget {
  const TravelCreateAddVisitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TravelCreateAddVisitViewModel>(
      create: (_) => TravelCreateAddVisitViewModel(),
      child: const TravelCreateAddVisitScreen(),
    );
  }

}
