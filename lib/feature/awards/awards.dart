import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:faraaz/core/constants/app_assets.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/feature/awards/controller/award_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class Awards extends StatelessWidget {
  const Awards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final awardController = Get.put(AwardController());
    return  Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: FadeInDown(
              duration: const Duration(milliseconds: 600),
              from: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Legacy and honors',
                    style: AppTextStyle.headline3,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Divider(color: AppColors.natural6,),
                  const SizedBox(
                    height: 24,
                  ),

                  Obx(
                      ()=> awardController.isLoading.value?
                          const Center(child: CircularProgressIndicator(),):


                          ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index){
                      return   AwardCard(imageUrl:awardController.awardList[index].image,
                        tittle: awardController.awardList[index].title, date: DateFormat.yMMMMd().format(awardController.awardList[index].date) , description: awardController.awardList[index].description,);
                    }, separatorBuilder: (context,index){
                      return const SizedBox(height: 16,);
                    }, itemCount: awardController.awardList.length),
                  ),

                  //
                  // const SizedBox(
                  //   height: 24,
                  // ),
                  // const Text(
                  //   'DYDF Youth Icon Award',style: AppTextStyle.body2Medium,),
                  //
                  // Text(
                  //   'Jan 1, 2023',style: AppTextStyle.caption.copyWith(color: AppColors.natural4),),
                  // const SizedBox(
                  //   height: 16,
                  // ),
                  // Text('The "DYDF Youth Icon Award" recognizes and celebrates exceptional young individuals who have made remarkable contributions and demonstrated extraordinary leadership in various domains, serving as inspiring role models for the youth of today.',
                  //   style: AppTextStyle.caption.copyWith(color: AppColors.natural4),
                  // ),
                  const SizedBox(height: 40,),
                
                ],
              ),
            ),
          )),
    );
  }
}

class AwardCard extends StatelessWidget {
  const AwardCard({
    super.key, required this.imageUrl, required this.tittle, required this.date, required this.description,
  });

  final String imageUrl;
  final String tittle;
  final String date;
  final String description;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: SizedBox(
            height: 288.h,
            width: double.maxFinite,
            child: CachedNetworkImage(
              progressIndicatorBuilder: (context, url, progress) => Center(
                  child: SizedBox(
                      height: 70,
                      width: 70,
                      child: Lottie.asset(
                        AppAssets.loaderWhite,
                        width: 35,
                      ))),
              imageUrl:imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
         Text(
          tittle,style: AppTextStyle.body2Medium,),

        Text(
          date,style: AppTextStyle.caption.copyWith(color: AppColors.natural4),),
        const SizedBox(
          height: 16,
        ),
        Text(description,
          style: AppTextStyle.caption.copyWith(color: AppColors.natural4),
        ),
        // const SizedBox(height: 24,),
        // ClipRRect(
        //   borderRadius: BorderRadius.circular(24),
        //   child: Image.asset(AppAssets.dydfAward,
        //     width: double.maxFinite,
        //     height: 288.h,
        //     fit: BoxFit.fitWidth,
        //
        //   ),
        // ),
      ],
    );
  }
}
