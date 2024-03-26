
import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:faraaz/core/constants/app_assets.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/feature/foundation/controller/foundation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Foundation extends StatelessWidget {
  const Foundation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foundationController = Get.put(FoundationController());
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Obx(
            ()=> foundationController.isLoading.value
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
                    const Text(
                      "A B M Fazle Karim Chowdhury Foundation",
                      style: AppTextStyle.headline3,
                    ),
                    // Text(
                    //   foundationController.foundation[0].title.toString(),
                    //   style: AppTextStyle.headline3,
                    // ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Divider(
                      color: AppColors.natural6,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text("Welcome to our Foundation - a beacon of hope and support for the vulnerable among us. Here, we extend our hands to those in need, offering assistance, care, and opportunities to create a better tomorrow. Our mission is rooted in compassion, aiming to uplift the lives of the less fortunate by providing essential aid and nurturing a sense of community. Together, let's pave the path towards a brighter future, hand in hand, as we make a meaningful difference in the lives of those who need it most.",
                      style: AppTextStyle.body2.copyWith(color: AppColors.natural4),
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
                          imageUrl: foundationController.foundation[0].url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 24,),
                    Text(
                      foundationController.foundation[0].title.toString(),
                      style: AppTextStyle.headline4,
                    ),
                    const SizedBox(height: 16,),

                    Text(foundationController.foundation[0].details,
                      style: AppTextStyle.body2.copyWith(color: AppColors.natural4),
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
