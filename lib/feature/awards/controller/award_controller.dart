import 'package:faraaz/config/network_service/network_service.dart';
import 'package:faraaz/core/constants/api_endpoints.dart';
import 'package:faraaz/core/helper/logger.dart';
import 'package:faraaz/feature/awards/data/award_model.dart';
import 'package:get/get.dart' hide Response;
import 'package:dio/dio.dart';

class AwardController extends GetxController {
  HttpService httpService = HttpService();
  var isLoading = false.obs;
  var awardList = <AwardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    httpService.init();
    getAwardList();
  }

  Future<void> getAwardList() async {
    try {
      isLoading(true);
      final result = await httpService.request(
        url: ApiEndPoints.award,
        method: Method.GET,
          authToken:"Bearer gAwOZ9NrAWpWfryfMJJE9aC77MIRSKpBZwDhw8LrjZcfJZCmpnfnGjFHAgwAoNqlbDKPE11vUeio0JlUNv5TS3cV4eOh4xf1UJqokSU3KaYtq2x2jxgHiZL0FTtX5smU"
      );
      if (result != null) {
        if (result is Response) {
          var data = result.data;
          logger.d(data);
          if (result.statusCode == 200) {
            awardList((data['data']['data'] as List)
                .map((award) => AwardModel.fromJson(award))
                .toList());
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
