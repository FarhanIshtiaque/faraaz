import 'package:faraaz/config/network_service/network_service.dart';
import 'package:faraaz/core/constants/api_endpoints.dart';
import 'package:faraaz/core/helper/logger.dart';
import 'package:faraaz/feature/home/data/journey_model.dart';
import 'package:get/get.dart' hide Response;
import 'package:dio/dio.dart';

import '../data/slider_model.dart';

class HomeController extends GetxController {
  HttpService httpService = HttpService();
  var isLoading = false.obs;
  var slidersList = <SliderModel>[].obs;
  var journeyList = <JourneyModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    httpService.init();
    getSliders();
    getJourneys();

  }

  /// get list of sliders from api
  Future<void> getSliders() async {
    try {
      isLoading(true);
      final result =
      await httpService.request(url: ApiEndPoints.homeData, method: Method.GET,);

      if (result != null) {
        if (result is Response) {
          var data = result.data;
          if (result.statusCode == 200) {
            slidersList((data['data']['slider'] as List)
                .map((slider) => SliderModel.fromJson(slider))
                .toList());
          //  logger.d(slidersList);

            isLoading(false);
          }
        } else {
          isLoading(false);
        }
      }
    } finally {
      isLoading(false);
    }
  }

  /// get list of sliders from api
  Future<void> getJourneys() async {
    try {
      isLoading(true);
      final result =
      await httpService.request(url: ApiEndPoints.journeys, method: Method.GET,);

      if (result != null) {
        if (result is Response) {
          var data = result.data;
          if (result.statusCode == 200) {
            journeyList((data['data'] as List)
                .map((journey) => JourneyModel.fromJson(journey))
                .toList());
         //   logger.d(journeyList);

            isLoading(false);
          }
        } else {
          isLoading(false);
        }
      }
    } finally {
      isLoading(false);
    }
  }



}