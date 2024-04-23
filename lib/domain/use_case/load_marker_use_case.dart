import 'dart:math';
import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

typedef MarkerMap = Map<String, BitmapDescriptor>;

class LoadMarkerUseCase {
  Future<Result<(MarkerMap markerIcon, MarkerMap selectedMarkerIcon), String>>
      call() async {
    final Map<String, BitmapDescriptor> markerIcon = {},
        selectedMarkerIcon = {};

    List<Future> futures = [];

    for (PlaceType type in PlaceType.values) {
      futures.add(
          _loadSvg("assets/markers/${type.name}.svg", const Size(24.0, 24.0))
              .then((svg) => markerIcon[type.name] = svg));

      futures.add(_loadSvg(
              "assets/markers/select/${type.name}.svg", const Size(28.0, 37.0))
          .then((svg) => selectedMarkerIcon[type.name] = svg));
    }

    try {
      await Future.wait(futures);
    } catch (e) {
      return const Result.error("마커 로딩에 실패했습니다.");
    }

    return Result.success((markerIcon, selectedMarkerIcon));
  }

  Future<BitmapDescriptor> _loadSvg(String path, Size size) async {
    final pictureInfo = await vg.loadPicture(SvgAssetLoader(path), null);

    double devicePixelRatio =
        PlatformDispatcher.instance.views.first.devicePixelRatio;
    int width = (size.width * devicePixelRatio).toInt();
    int height = (size.height * devicePixelRatio).toInt();

    final scaleFactor = min(
      width / pictureInfo.size.width,
      height / pictureInfo.size.height,
    );

    final recorder = PictureRecorder();

    Canvas(recorder)
      ..scale(scaleFactor)
      ..drawPicture(pictureInfo.picture);

    final rasterPicture = recorder.endRecording();

    final image = rasterPicture.toImageSync(width, height);
    final bytes = (await image.toByteData(format: ImageByteFormat.png))!;

    return BitmapDescriptor.fromBytes(bytes.buffer.asUint8List());
  }
}
