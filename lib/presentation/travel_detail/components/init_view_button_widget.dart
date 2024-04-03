import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_view_model.dart';

class InitViewButtonWidget extends StatelessWidget {
  const InitViewButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TravelDetailViewModel>();

    if (!viewModel.isShownInitViewButton) return const SizedBox();

    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      onPressed: () {
        viewModel.onEvent(const TravelDetailEvent.initView());
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.refresh,
              size: 16, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 5),
          Text('카메라 초기화', style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(width: 3),
        ],
      ),
    );
  }
}
