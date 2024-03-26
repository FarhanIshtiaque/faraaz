import 'package:faraaz/config/network_service/network_service.dart';
import 'package:faraaz/core/constants/api_endpoints.dart';
import 'package:faraaz/feature/journey/data/journey_data_model.dart';
import 'package:get/get.dart' hide Response;
import 'package:dio/dio.dart';
class JourneyController extends GetxController{
  HttpService httpService = HttpService();
  var isLoading = false.obs;
   JourneyDataModel? journeyDataModel;
// arguments
  final slug = Get.arguments;
  @override
  void onInit() {
    super.onInit();
    httpService.init();
    getJourney();
  }

  /// get list of journey from api
  Future<void> getJourney() async {
    try {
      isLoading(true);
    //  logger.d(ApiEndPoints.journeys+slug);
      final result =
      await httpService.request(url: ApiEndPoints.journeys+slug, method: Method.GET,);

      if (result != null) {
        if (result is Response) {
          var data = result.data;
       //   logger.d(data);
          if (result.statusCode == 200) {
            journeyDataModel = JourneyDataModel.fromJson(data['data']);
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