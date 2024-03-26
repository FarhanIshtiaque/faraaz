import 'package:animate_do/animate_do.dart';
import 'package:faraaz/core/constants/app_assets.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Awards extends StatelessWidget {
  const Awards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(AppAssets.jojoAward,
                      width: double.maxFinite,
                      height: 288.h,
                      fit: BoxFit.fitWidth,
                      
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Jojo International Iconic Award',style: AppTextStyle.body2Medium,),

                  Text(
                    'May 31, 2023',style: AppTextStyle.caption.copyWith(color: AppColors.natural4),),
                  const SizedBox(
                    height: 16,
                  ),
                  Text('The Jojo International Iconic Award is a prestigious accolade that honors visionaries and achievers from diverse fields, celebrating their outstanding contributions and inspiring future generations worldwide.',
                  style: AppTextStyle.caption.copyWith(color: AppColors.natural4),
                  ),
                  SizedBox(height: 24,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(AppAssets.dydfAward,
                      width: double.maxFinite,
                      height: 288.h,
                      fit: BoxFit.fitWidth,

                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'DYDF Youth Icon Award',style: AppTextStyle.body2Medium,),

                  Text(
                    'Jan 1, 2023',style: AppTextStyle.caption.copyWith(color: AppColors.natural4),),
                  const SizedBox(
                    height: 16,
                  ),
                  Text('The "DYDF Youth Icon Award" recognizes and celebrates exceptional young individuals who have made remarkable contributions and demonstrated extraordinary leadership in various domains, serving as inspiring role models for the youth of today.',
                    style: AppTextStyle.caption.copyWith(color: AppColors.natural4),
                  ),
                  const SizedBox(height: 40,),
                
                ],
              ),
            ),
          )),
    );
  }
}
