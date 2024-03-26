import 'package:animate_do/animate_do.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/core/resource/widgets/primary_button.dart';
import 'package:faraaz/core/resource/widgets/primary_textfield.dart';
import 'package:flutter/material.dart';

class Meet extends StatelessWidget {
  const Meet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: FadeInDown(
              duration: const Duration(milliseconds: 600),
              from: 20,
              child: Column(
                children: [
                  const Text(
                    'Meet With Faraaz Karim Chowdhury',
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
                    'Welcome to our \'Documented Conclave\' - an esteemed avenue where appointments are secured through the submission of requisite documentation and purposeful intent. This distinguished platform invites you to schedule your face-to-face session by providing the necessary documents and articulating the rationale behind your appointment. Embrace this opportunity to engage meaningfully, ensuring that your objectives and inquiries are met with due consideration. Together, let us curate a purposeful encounter, where each interaction enriches the fabric of our collaborative engagements.',
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
                                    Text('Book Appointment',
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
                                      hintText: 'Phone',
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const PrimaryTextField(
                                      hintText: 'Address',
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),  const PrimaryTextField(
                                      hintText: 'Your Photo',
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),  const PrimaryTextField(
                                      hintText: 'Your NID',
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const PrimaryTextField(
                                      hintText: 'Reason of appointment',
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    // const SizedBox(
                                    //   height: 118,
                                    //   child: ExpandedTextField(
                                    //     hintText: 'Your message',
                                    //   ),
                                    // ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    PrimaryButton(
                                        onPressed: () {},
                                        buttonNameWidget: const Text(
                                          'Submit',
                                          style: AppTextStyle.button1,
                                        )),
                                    const SizedBox(height: 40,),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                        ;
                      },
                      buttonNameWidget: const Text(
                        'Book an appointment',
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
