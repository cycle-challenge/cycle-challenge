
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/visit/bound.dart';
import 'package:yeohaeng_ttukttak/states/daily_visit_summary_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/json.dart';

class TravelDetailView extends StatelessWidget {
  GoogleMapController? _controller;

  @override
  Widget build(BuildContext context) {
    TravelDetailViewModel viewModel = context.read<TravelDetailViewModel>();

    int index = context.watch<TravelDetailViewModel>().index;

    bool isDarkMode =
        MediaQuery.platformBrightnessOf(context) == Brightness.dark;

    TextStyle? titleLarge =
        Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white);

    TextStyle? bodyMedium =
        Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white);

    DailyVisitSummary? summary = context.watch<TravelDetailViewModel>().summary;

    VisitModel? visit = context.watch<TravelDetailViewModel>().visit;
    var visitIndex = context.watch<TravelDetailViewModel>().visitIndex;

    bool isExpanded = context.watch<TravelDetailViewModel>().isExpanded;

    if (_controller != null && summary != null) {

      if (isExpanded) {

        Bound entire = summary.bound.entire;

        LatLngBounds bounds = LatLngBounds(
            southwest:
            LatLng(entire.southwest.latitude, entire.southwest.longitude),
            northeast:
            LatLng(entire.northeast.latitude, entire.northeast.longitude));

        _controller?.moveCamera(CameraUpdate.newLatLngBounds(bounds, 100));

      } else {
        Bound bound = summary.bound.visits[visitIndex];

        LatLngBounds bounds = LatLngBounds(
            southwest:
            LatLng(bound.southwest.latitude, bound.southwest.longitude),
            northeast:
            LatLng(bound.northeast.latitude, bound.northeast.longitude));

        _controller?.moveCamera(CameraUpdate.newLatLngBounds(bounds, 100));
      }

    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${index + 1}일 차",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                GoogleMap(
                  zoomGesturesEnabled: false,
                  scrollGesturesEnabled: false,
                  tiltGesturesEnabled: false,
                  rotateGesturesEnabled: false,
                  zoomControlsEnabled: false,
                  myLocationButtonEnabled: false,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(36.6272, 127.4987),
                    zoom: 13,
                  ),
                  onMapCreated: (GoogleMapController controller) async {
                    String path = isDarkMode
                        ? "assets/map/map_style_dark.json"
                        : "assets/map/map_style.json";
                    controller.setMapStyle(await getJsonFile(path));
                    _controller = controller;
                  },
                  markers: summary != null
                      ? Set.of(summary.visits
                          .map((e) => e.place)
                          .map((e) => Marker(
                              markerId: MarkerId(e.id.toString()),
                              onTap: () {},
                              consumeTapEvents: true,
                              position: LatLng(
                                  e.location.latitude, e.location.longitude)))
                          .toList())
                      : {},
                ),
                Positioned(
                    bottom: 20,
                    right: 15,
                    child: FloatingActionButton(
                      onPressed: () {
                        viewModel.switchExpanded();
                      },
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      child: isExpanded ?  const Icon(Icons.expand_less): const Icon(Icons.expand_more),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 240,
            child: Stack(
              children: [
                SizedBox(
                    width: double.maxFinite,
                    child: Image.network(
                      visit?.images.firstOrNull?.medium ?? "",
                      fit: BoxFit.cover,
                      errorBuilder: (context, exception, trace) => Image.asset(
                          "assets/image/default.png",
                          fit: BoxFit.cover),
                    )),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.75),
                        ]),
                  ),
                ),
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          visit?.place.name ?? "",
                          style:
                              titleLarge?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: visit?.place.type.label,
                              style: bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600)),
                          TextSpan(text: " · 사진 ${visit?.images.length ?? 0}장")
                        ])),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        child: Row(
          children: [
            TextButton(
                onPressed: context.watch<TravelDetailViewModel>().hasPrev
                    ? () {
                        viewModel.prev();
                      }
                    : null,
                child: const Text("어제")),
            TextButton(
                onPressed: context.watch<TravelDetailViewModel>().hasPrevVisit
                    ? () => viewModel.prevVisit()
                    : null,
                child: const Text("이전")),
            TextButton(
                onPressed: context.watch<TravelDetailViewModel>().hasNextVisit
                    ? () async {
                        viewModel.nextVisit();
                      }
                    : null,
                child: const Text("다음")),
            TextButton(
                onPressed: context.watch<TravelDetailViewModel>().hasNext
                    ? () => viewModel.next()
                    : null,
                child: const Text("내일")),
          ],
        ),
      ),
    );
  }
}

class TravelDetailPage extends StatelessWidget {
  final int travelID;

  const TravelDetailPage({super.key, required this.travelID});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TravelDetailViewModel>(
        create: (_) => TravelDetailViewModel(travelID),
        child: TravelDetailView());
  }
}
