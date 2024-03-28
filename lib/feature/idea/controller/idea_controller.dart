import 'dart:io';
import 'package:faraaz/config/network_service/network_service.dart';
import 'package:faraaz/core/constants/api_endpoints.dart';
import 'package:faraaz/core/helper/logger.dart';
import 'package:faraaz/feature/celebrate/data/artwork_model.dart';
import 'package:get/get.dart' hide Response,FormData,MultipartFile;
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
class CelebrateController extends GetxController{

  HttpService httpService = HttpService();
  var isLoading = false.obs;
  File? selectedImage;

  @override
  void onInit() {
    super.onInit();
    httpService.init();
  }



  /// selecting image from gallery
  Future pickImageFromGallery()async{

    final returnImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    if(returnImage ==null) return;
    selectedImage = File(returnImage.path);
    update();

  }

  var isUploading = false.obs;
  void uploadImage(File? imageFile) async {
    isUploading(true);
    try {
      String fileName = imageFile!.path.split('/').last;
      FormData formData = FormData.fromMap({
        'url': await MultipartFile.fromFile(
          imageFile.path,
          filename: fileName,
        ),
      });

      Response response = await Dio().post(

          ApiEndPoints.baseUrl+ApiEndPoints.uploadArtwork,
          data: formData,
          options: Options(headers: {
            'Content-Type': 'multipart/form-data'
          },)
      );

      logger.d('Upload successful. Response: ${response.data}');
      isUploading(false);
      Get.back();
      Get.snackbar('Success', 'Your artwork successfully uploaded');

    } catch (e) {
      isUploading(false);
      logger.d('Upload failed: $e');
    }
  }




}