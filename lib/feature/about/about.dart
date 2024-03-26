
import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:faraaz/core/constants/app_assets.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: FadeInDown(
              duration: const Duration(milliseconds: 600),
              from: 20,
              child: Column(
                children: [
                  const Text(
                    'Hey I\'m Faraaz 👋',
                    style: AppTextStyle.headline3,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: SizedBox(
                      height: 380.h,
                      width: double.maxFinite,
                      child: CachedNetworkImage(

                        progressIndicatorBuilder: (context, url, progress) =>
                            Center(child: SizedBox(height: 70, width: 70, child: Lottie.asset(AppAssets.loaderWhite, width: 35))),
                        imageUrl: 'https://api.faraaz.info/storage/CMS/1696169369.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'True progress is measured not only by personal success, but by the positive impact we leave on the lives of others. ',
                    style: AppTextStyle.body2.copyWith(color: AppColors.natural4),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Divider(color: AppColors.natural7,),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'In the tapestry of my journey, I am guided by a steadfast belief in the power of long-term vision. For me, social work is a calling, a way of life that I embrace with a sense of purpose that runs deep. From the very first act of kindness, as a child, when I donated my excess clothes to those in need, I knew that this path was meant for me. It ignited a fire within, a commitment to serve, to stand alongside those who seek betterment, to be a beacon of hope.\r\n\r\nIn every step I take, I envision a future where individuals and communities flourish, where empowerment is woven into the fabric of everyday life. I believe that when people stand together for each other, their collective strength can move mountains, and create waves of positive change that resonate for generations. \r\n\r\nBeyond the realms of social work, I find great joy in both watching and playing football. The resilience, camaraderie, and triumphs on the field inspire me to mirror these values in my approach to social work. My interests extend to the captivating world of physics, where I explore the mysteries of the universe and the fundamental principles that govern our existence. I love to delve into the intricate threads of global politics, history, Islamic studies, and the awe-inspiring expanse of the night sky through my passion for astronomy.\r\n\r\nWith each passing day, I am reminded that this journey is not a sprint, but a marathon, where the truest victories lie in the lasting impact we make. Together, with a long-term vision as our compass, we shall navigate towards a brighter future.',
                    style: AppTextStyle.caption.copyWith(color: AppColors.natural4),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Divider(color: AppColors.natural7,),
                  const SizedBox(height: 24,),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.natural1,
                      borderRadius: BorderRadius.circular(24)
                    ),

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text('Donation',
                                  style: AppTextStyle.body1.copyWith(color: AppColors.white),),
                                  Text('Among the people',
                                  style: AppTextStyle.caption.copyWith(color: AppColors.natural7),
                                  )
                                ],
                              ),
                               Text('10 M+', style: AppTextStyle.headline4.copyWith(color: AppColors.white),)
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Divider(color: AppColors.natural5,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text('Student',
                                    style: AppTextStyle.body1.copyWith(color: AppColors.white),),
                                  Text('Education fee provided',
                                    style: AppTextStyle.caption.copyWith(color: AppColors.natural7),
                                  )
                                ],
                              ),
                               Text('10 K+', style: AppTextStyle.headline4.copyWith(color: AppColors.white),)
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Divider(color: AppColors.natural5,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text('Shop',
                                    style: AppTextStyle.body1.copyWith(color: AppColors.white),),
                                  Text('Given to disabled people',
                                    style: AppTextStyle.caption.copyWith(color: AppColors.natural7),
                                  )
                                ],
                              ),
                               Text('50 +', style: AppTextStyle.headline4.copyWith(color: AppColors.white),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

 
                  const SizedBox(height: 40,),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     IconButton(
                  //         onPressed: () {},
                  //         icon: SvgPicture.asset(
                  //           AppAssets.facebookIcon,
                  //           width: 24,
                  //
                  //         )),
                  //     const SizedBox(
                  //       width: 8,
                  //     ),
                  //     IconButton(
                  //         onPressed: () {},
                  //         icon: SvgPicture.asset(
                  //           AppAssets.instagramIcon,
                  //           width: 24,
                  //         )),
                  //     const SizedBox(
                  //       width: 8,
                  //     ),
                  //     IconButton(
                  //         onPressed: () {},
                  //         icon: SvgPicture.asset(
                  //           AppAssets.youtubeIcon,
                  //           colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
                  //           width: 24,
                  //         )),
                  //   ],
                  // ),
                ],
              ),
            ),
          )),
    );;
  }
}
