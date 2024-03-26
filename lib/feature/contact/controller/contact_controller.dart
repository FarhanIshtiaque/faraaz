import 'package:faraaz/config/network_service/network_service.dart';
import 'package:faraaz/core/constants/api_endpoints.dart';
import 'package:faraaz/core/helper/logger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:dio/dio.dart';

class ContactController extends GetxController {
  HttpService httpService = HttpService();
  var isLoading = false.obs;
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    httpService.init();
  }

  @override
  void onClose(){
   emailController.dispose();
   nameController.dispose();
   subjectController.dispose();
   messageController.dispose();
  }


  Future<void> sendContactMessage({
    required String email,
    required String name,
    required String message,
    required String subject,
  }) async {
    final dataMap = {
      'first_name': name,
      'last_name': '',
      'email': email,
      'message': message,
      "subject": subject
    };

    try {
      isLoading(true);
      final result = await httpService.request(
          url: ApiEndPoints.mailUs, method: Method.POST, params: dataMap);
      if (result != null) {
        if (result is Response) {
          var data = result.data;
          logger.d(data);
          if (result.statusCode == 200) {

            isLoading(false);
            Get.snackbar('Success', 'Your mail has been sent',);
            emailController.clear();
            messageController.clear();
            subjectController.clear();
            nameController.clear();
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
