

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:faraaz/config/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NetworkController extends GetxController {
  final Connectivity _connectivity = Connectivity();
  bool isConnected = false;
  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) {
    if (connectivityResult != ConnectivityResult.none && isConnected == false) {
      isConnected = true;
      Get.back();
    } else if (connectivityResult == ConnectivityResult.none && isConnected == true) {
      isConnected = false;
      Get.toNamed(Routes.NOINTERNET);
    }
  }
}
