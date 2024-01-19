
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class FondoDetailController extends GetxController with GetSingleTickerProviderStateMixin {
  RxInt currentImage = 0.obs;

  late CarouselController imageController;

  void updateCurrentImage(index) {
    currentImage.value = index;
  }

  @override
  void onInit() {
    imageController = CarouselController();
    super.onInit();
  }
}
