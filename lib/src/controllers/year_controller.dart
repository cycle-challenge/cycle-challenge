
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class YearController extends GetxController with GetSingleTickerProviderStateMixin {
  RxInt tabNum = 0.obs;

  final List<Tab> myTabs = <Tab>[
    const Tab(text: '2023'),
    const Tab(text: '2024'),
    const Tab(text: '2025'),
  ];

  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(length: myTabs.length, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
