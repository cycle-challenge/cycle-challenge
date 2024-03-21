import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/states/google_map_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';

class SearchNearbyButtonWidget extends StatelessWidget {
  const SearchNearbyButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isMoving = context.watch<GoogleMapState>().isMoving;

    return isMoving
        ? GestureDetector(
            onTap: () async {
              // load data
              context.read<GoogleMapState>().setIsMoving(false);

              double latitude = context.read<GoogleMapState>().latitude;
              double longitude = context.read<GoogleMapState>().longitude;
              context.read<PlaceViewModel>().search(latitude, longitude);
            },
            child: Container(
              width: 155,
              height: 35,
              margin: const EdgeInsets.only(top: 15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Theme.of(context).colorScheme.surface),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.refresh,
                      size: 16, color: Theme.of(context).colorScheme.primary),
                  const SizedBox(width: 5),
                  Text('현위치에서 재검색',
                      style: Theme.of(context).textTheme.labelLarge),
                  const SizedBox(width: 3),
                ],
              ),
            ),
          )
        : Container();
  }
}
