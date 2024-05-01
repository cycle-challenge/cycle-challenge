import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/components/grouped_visit_list_view.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/components/visit_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_screen.dart';
import 'package:yeohaeng_ttukttak/utils/json.dart';

class TravelCreateScreen extends StatefulWidget {
  final Travel travel;

  const TravelCreateScreen({super.key, required this.travel});

  @override
  State<TravelCreateScreen> createState() => _TravelCreateScreenState();
}

class _TravelCreateScreenState extends State<TravelCreateScreen> {
  GoogleMapController? _controller;
  final _panelController = PanelController();

  @override
  void dispose() {
    _controller?.dispose();
    _panelController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TravelCreateViewModel>();
    final mapViewModel = context.watch<MapViewModel>();

    final state = viewModel.state;
    final mapState = mapViewModel.state;

    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;


    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          scrolledUnderElevation: 0,
          backgroundColor: colorScheme.surface.withOpacity(0),
          title: Text(widget.travel.name,
              style:
                  textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                colorScheme.surface,
                colorScheme.surface.withOpacity(0.75),
                colorScheme.surface.withOpacity(0.5),
                colorScheme.surface.withOpacity(0.3),
                colorScheme.surface.withOpacity(0),
              ])))),
      extendBodyBehindAppBar: true,
      body: LayoutBuilder(builder: (context, constraints) {
        MediaQueryData mediaQuery = MediaQuery.of(context);

        const double panelMinHeight = 135;
        final double panelMaxHeight =
            constraints.maxHeight - mediaQuery.padding.top;

        return SlidingUpPanel(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            panelSnapping: true,
            snapPoint: 0.65,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            minHeight: panelMinHeight,
            maxHeight: panelMaxHeight,
            color: colorScheme.surface,
            controller: _panelController,
            onPanelSlide: (double pos) {
              final height = pos * (panelMaxHeight - panelMinHeight);
              viewModel.onEvent(TravelCreateEvent.changePanelHeight(height));
            },
            panel: GroupedVisitListView(visits: state.visits, travelDates: state.travelDates),
            body: GoogleMap(
                padding: EdgeInsets.only(
                    top: mediaQuery.padding.top,
                    bottom: state.panelHeight + 260),
                myLocationButtonEnabled: false,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(36.6272, 127.4987),
                  zoom: 13,
                ),
                onMapCreated: (GoogleMapController controller) async {
                  bool isDarkMode = MediaQuery.platformBrightnessOf(context) ==
                      Brightness.dark;

                  String path = isDarkMode
                      ? "assets/map/map_style_dark.json"
                      : "assets/map/map_style.json";
                  controller.setMapStyle(await getJsonFile(path));
                  _controller = controller;
                },
                markers: Set.of(state.visits.mapWithIndex((visit, index) =>
                    Marker(
                        markerId: MarkerId(visit.place.id.toString()),
                        draggable: true,
                        anchor: const Offset(0.5, 0.5),
                        icon: mapState.markerIcon[visit.place.type.name] ??
                            BitmapDescriptor.defaultMarker,
                        position: LatLng(
                            visit.place.latitude, visit.place.longitude))))));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        backgroundColor: colorScheme.secondaryContainer,
        foregroundColor: colorScheme.onSecondaryContainer,
        child: const Icon(Icons.save),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: colorScheme.outlineVariant, width: 1))),
        child: BottomAppBar(
            surfaceTintColor: colorScheme.surface,
            child: Row(children: [
              IconButton.filledTonal(
                  onPressed: () {}, icon: const Icon(Icons.add)),
              const SizedBox(width: 8),
              IconButton.filledTonal(
                  onPressed: () async {
                    final now = DateTime.now();
                    DateTimeRange? travelDates = await showDateRangePicker(
                        initialDateRange: state.travelDates,
                        context: context,
                        firstDate: now,
                        lastDate: now.add(const Duration(days: 730)));
                    viewModel
                        .onEvent(TravelCreateEvent.setTravelDates(travelDates));
                  },
                  icon: const Icon(Icons.date_range_outlined))
            ])),
      ),
    );
  }
}
