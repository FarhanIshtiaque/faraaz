import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:faraaz/core/constants/app_assets.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/feature/journey/controller/journey_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Journey extends StatelessWidget {
  const Journey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final journeyController = Get.put(JourneyController());
    return  Scaffold(
              appBar: AppBar(
                elevation: 0,
              ),
              body: Obx(
                  ()=> journeyController.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: FadeInDown(
                    duration: const Duration(milliseconds: 600),
                    from: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          journeyController.journeyDataModel!.title.toString(),
                          style: AppTextStyle.headline3,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Divider(
                          color: AppColors.natural6,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: SizedBox(
                            height: 220.h,
                            width: double.maxFinite,
                            child: CachedNetworkImage(

                              progressIndicatorBuilder: (context, url, progress) =>
                                  Center(child: SizedBox(height: 70, width: 70, child: Lottie.asset(AppAssets.loaderWhite, width: 35))),
                              imageUrl: journeyController.journeyDataModel!.url,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),


                        Html(
                          data: """${journeyController.journeyDataModel?.description}""",
                          style: {
                            'p': Style(
                              fontFamily: 'Poppins',
                              fontSize: FontSize.large,
                              fontWeight: FontWeight.w400,
                            )
                          },
                        ),

                        // ClipRRect(
                        //   borderRadius: BorderRadius.circular(24),
                        //   child: SizedBox(
                        //     height: 380.h,
                        //     width: double.maxFinite,
                        //     child: CachedNetworkImage(
                        //
                        //       progressIndicatorBuilder: (context, url, progress) =>
                        //           Center(child: SizedBox(height: 70, width: 70, child: Lottie.asset(AppAssets.loaderWhite, width: 35))),
                        //       imageUrl: 'https://api.faraaz.info/storage/ARTWORK/1698769907.png',
                        //       fit: BoxFit.fill,
                        //     ),
                        //   ),
                        // ),

                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                )),
              ),
            );
  }
}
