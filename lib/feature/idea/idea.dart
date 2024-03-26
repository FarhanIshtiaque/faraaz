
import 'package:animate_do/animate_do.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/core/resource/widgets/expanded_textfield.dart';
import 'package:faraaz/core/resource/widgets/primary_button.dart';
import 'package:faraaz/core/resource/widgets/primary_textfield.dart';
import 'package:flutter/material.dart';

class Idea extends StatelessWidget {
  const Idea({Key? key}) : super(key: key);

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
                children: [
                  const Text(
                    'Collaborative Ventures',
                    style: AppTextStyle.headline3,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Divider(color: AppColors.natural6,),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Welcome to the "Collaborative Ventures". This space is dedicated to fostering innovation and partnership in our mission to uplift communities. It offers you a unique opportunity to partner with us in business. We believe that the power of collective ideas can lead to groundbreaking solutions. Here, we invite you to share your business ideas, knowing that every seed of an idea has the potential to grow into something extraordinary. Together, we can turn visions into reality and make a lasting impact. Your contribution is invaluable, and we look forward to exploring the possibilities with you.',
                    style: AppTextStyle.body2.copyWith(color: AppColors.natural4),
                  ),
                  const SizedBox(
                    height: 24,
                  ),

                  PrimaryButton(
                      onPressed: () {
                        showFlexibleBottomSheet(
                          minHeight: 0,
                          initHeight: 0.7,
                          maxHeight: 1,
                          context: context,
                          bottomSheetBorderRadius: BorderRadius.circular(24),

                          anchors: [0, 0.7, 1],
                          isSafeArea: true,
                          builder: (BuildContext context, ScrollController scrollController, double bottomSheetOffset) {

                            return SingleChildScrollView(
                              controller: scrollController,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                child: Column(
                                  children: [
                                    SizedBox(height: 24,),
                                    Text('Please fill up the fields',
                                    style: AppTextStyle.body1,
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    const PrimaryTextField(
                                      hintText: 'Your name',
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const PrimaryTextField(
                                      hintText: 'Your email',
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const PrimaryTextField(
                                      hintText: 'Contact',
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const PrimaryTextField(
                                      hintText: 'Attachment',
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const SizedBox(
                                      height: 118,
                                      child: ExpandedTextField(
                                        hintText: 'Your message',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    PrimaryButton(
                                        onPressed: () {},
                                        buttonNameWidget: const Text(
                                          'Submit',
                                          style: AppTextStyle.button1,
                                        )),
                                    SizedBox(height: 40,),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                        ;
                      },
                      buttonNameWidget: const Text(
                        'Submit your business idea',
                        style: AppTextStyle.button1,
                      )),
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
    );
  }
}
