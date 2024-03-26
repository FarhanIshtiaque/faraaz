import 'package:animate_do/animate_do.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:faraaz/core/constants/app_assets.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/core/resource/widgets/primary_button.dart';
import 'package:faraaz/core/resource/widgets/primary_textfield.dart';
import 'package:faraaz/feature/celebrate/controller/celebrate_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

class Celebrate extends StatelessWidget {
  const Celebrate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final celebrateController = Get.put(CelebrateController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Obx(() => celebrateController.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
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
                      'Celebrating Talent',
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
                      'Welcome to \'Celebrating Talent\' - an ode to my well-wishers whose talent and creativity knows no bounds. This space is a tribute to the incredible individuals who pour their hearts and souls into crafting masterpieces, each piece a testament of their unique giftedness. Here, we proudly display their unwavering dedication to work of art and the extraordinary talents they graciously offer. Join us in celebrating the brilliance that lights up our community. ',
                      style: AppTextStyle.body2
                          .copyWith(color: AppColors.natural4),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    PrimaryButton(
                        onPressed: () {
                          showFlexibleBottomSheet(
                            maxHeight: 1,
                            context: context,
                            bottomSheetBorderRadius: BorderRadius.circular(24),
                            anchors: [0,  1],
                            isSafeArea: true,
                            builder: (BuildContext context,
                                ScrollController scrollController,
                                double bottomSheetOffset) {
                              return SingleChildScrollView(
                                controller: scrollController,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      const Text(
                                        'Please upload your Artwork',
                                        style: AppTextStyle.body1,
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      GetBuilder<CelebrateController>(
                                          builder: (controller) {
                                        return controller.selectedImage == null
                                            ? PrimaryTextField(
                                                onTap: () {
                                                  controller
                                                      .pickImageFromGallery();
                                                },
                                                readOnly: true,
                                                hintText: 'Select your artwork',
                                                suffixIcon: const Icon(
                                                    Iconsax.document),
                                              )
                                            : Stack(
                                                children: [
                                                  ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                      child: Image.file(
                                                          controller
                                                              .selectedImage!)),
                                                  Positioned(
                                                    top: 16,
                                                    right: 16,
                                                    child: InkWell(
                                                      onTap: (){
                                                        controller.selectedImage = null;
                                                        Get.back();
                                                      },
                                                      child: Container(
                                                        height:30,
                                                        width: 30,
                                                        decoration: const BoxDecoration(
                                                          color: AppColors.black,
                                                          shape: BoxShape.circle
                                                        ),
                                                        child: const Icon(
                                                          size: 20,
                                                            Icons.close_rounded, color: AppColors.white,),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              );
                                      }),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Row(
                                        children: [
                                          Flexible(
                                            child: PrimaryButton(
                                                onPressed: () {
                                                  celebrateController.selectedImage = null;
                                                  Get.back();
                                                },
                                                color: AppColors.gray50,
                                                buttonNameWidget: Text(
                                                  'Cancel',
                                                  style: AppTextStyle.button1
                                                      .copyWith(
                                                          color:
                                                              AppColors.black),
                                                )),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          Flexible(
                                            child: PrimaryButton(
                                                onPressed: () async {
                                                  if(celebrateController.selectedImage != null){
                                             celebrateController.uploadImage(celebrateController.selectedImage)  ;}
                                                },
                                                buttonNameWidget: Obx(
                              ()=>  celebrateController.isUploading.value?
                                  Lottie.asset(AppAssets.loaderWhite):

                              const Text(
                                                    'Submit',
                                                    style: AppTextStyle.button1,
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                          ;
                        },
                        buttonNameWidget: const Text(
                          'Upload your art work',
                          style: AppTextStyle.button1,
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ArtworkCard(
                            imageUrl:
                                celebrateController.artWorkList[index].url,
                          );
                        },
                        separatorBuilder: (context, i) => const SizedBox(
                              height: 24,
                            ),
                        itemCount: celebrateController.artWorkList.length),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ))),
    );
  }
}

class ArtworkCard extends StatelessWidget {
  const ArtworkCard({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: SizedBox(
        height: 420.h,
        width: double.maxFinite,
        child: CachedNetworkImage(
          progressIndicatorBuilder: (context, url, progress) => Center(
              child: SizedBox(
                  height: 70,
                  width: 70,
                  child: Lottie.asset(AppAssets.loaderWhite, width: 35))),
          imageUrl: imageUrl,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
