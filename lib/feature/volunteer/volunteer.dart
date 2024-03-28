import 'package:animate_do/animate_do.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:faraaz/config/routes/app_pages.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/core/resource/widgets/primary_button.dart';
import 'package:faraaz/core/resource/widgets/primary_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Volunteer extends StatefulWidget {
  const Volunteer({Key? key}) : super(key: key);

  @override
  State<Volunteer> createState() => _VolunteerState();
}

class _VolunteerState extends State<Volunteer> {
  final PageController pageController = PageController();
  SingingCharacter? _character = SingingCharacter.yes;

  int activePage = 0;

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
                'Join our Volunteer team',
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
              Text(
                'Are you passionate about making a positive impact in your community? Join our volunteer team and become a driving force for change! Whether you\'re interested in lending a hand at events, contributing your skills to specific projects, or simply spreading awareness, we welcome your enthusiasm and commitment. Join us in our mission to empower and uplift our community. Fill out the volunteer form below and embark on a rewarding journey with us!',
                style: AppTextStyle.body2.copyWith(color: AppColors.natural4),
              ),
              const SizedBox(
                height: 24,
              ),

              PrimaryButton(
                  onPressed: () {
                    Get.toNamed(Routes.VOLUNTEERFORM);
                    // showFlexibleBottomSheet(
                    //   minHeight: 0,
                    //   initHeight: 1,
                    //   maxHeight: 1,
                    //   context: context,
                    //   bottomSheetBorderRadius: BorderRadius.circular(24),
                    //
                    //   // anchors: [ 1],
                    //   isSafeArea: true,
                    //   builder: (BuildContext context,
                    //       ScrollController scrollController,
                    //       double bottomSheetOffset) {
                    //     return PageView(
                    //       controller: pageController,
                    //       onPageChanged: (int page) {
                    //         setState(() {
                    //           activePage = page;
                    //         });
                    //       },
                    //       children: [
                    //         Container(
                    //           child: Padding(
                    //             padding:
                    //                 const EdgeInsets.symmetric(horizontal: 24),
                    //             child: Column(
                    //             crossAxisAlignment:CrossAxisAlignment.start,
                    //               children: [
                    //                 const SizedBox(
                    //                   height: 40,
                    //                 ),
                    //                 Text(
                    //                   '1. Are you involved in politics? ',
                    //                   style: AppTextStyle.body2
                    //                       .copyWith(color: AppColors.natural2),
                    //                 ),
                    //                 const SizedBox(
                    //                   height: 16,
                    //                 ),
                    //                 ListTile(
                    //
                    //                   title: const Text('Yes'),
                    //
                    //                   leading: Radio<SingingCharacter>(
                    //                     value: SingingCharacter.yes,
                    //                     groupValue: _character,
                    //                     onChanged: (SingingCharacter? value) {
                    //                       setState(() {
                    //                         _character = value;
                    //                       });
                    //                     },
                    //                   ),
                    //                 ),
                    //                 ListTile(
                    //                   title: const Text('No'),
                    //                   leading: Radio<SingingCharacter>(
                    //                     value: SingingCharacter.no,
                    //                     groupValue: _character,
                    //                     onChanged: (SingingCharacter? value) {
                    //                       setState(() {
                    //                         _character = value;
                    //                       });
                    //                     },
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //         Container(
                    //           color: Colors.blue,
                    //         ),
                    //         Container(
                    //           color: Colors.green,
                    //         ),
                    //       ],
                    //     );
                    //   },
                    // );
                    // ;
                  },
                  buttonNameWidget: const Text(
                    'Book an appointment',
                    style: AppTextStyle.button1,
                  )),
              const SizedBox(
                height: 40,
              ),
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
enum SingingCharacter { yes, no }