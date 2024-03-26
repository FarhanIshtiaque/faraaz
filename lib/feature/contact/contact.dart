import 'package:animate_do/animate_do.dart';
import 'package:faraaz/core/constants/app_assets.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/core/helper/validator.dart';
import 'package:faraaz/core/resource/widgets/expanded_textfield.dart';
import 'package:faraaz/core/resource/widgets/primary_button.dart';
import 'package:faraaz/core/resource/widgets/primary_textfield.dart';
import 'package:faraaz/feature/contact/controller/contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactController = Get.put(ContactController());
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: FadeInDown(
          duration: const Duration(milliseconds: 600),
          from: 20,
          child: Form(
            key: contactController.key,
            child: Column(
              children: [
                const Text(
                  'Lets build something great',
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
                  'Have questions or ideas? I\'m just an email away. Reach out at [Your Email Address] for collaborations, feedback, or tech discussions.',
                  style: AppTextStyle.body2.copyWith(color: AppColors.natural4),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Reach out',
                  style: AppTextStyle.headline4,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24,
                ),
                PrimaryTextField(
                  hintText: 'Your name',
                  controller: contactController.nameController,
                  validator: (v) => Validator.validateName(v!),
                ),
                const SizedBox(
                  height: 16,
                ),
                PrimaryTextField(
                  hintText: 'Your email',
                  controller: contactController.emailController,
                  validator: (v) => Validator.validateEmail(v!),
                ),
                const SizedBox(
                  height: 16,
                ),
                PrimaryTextField(
                  hintText: 'Subject',
                  controller: contactController.subjectController,
                  validator: (v) => Validator.validateSubject(v!),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 118,
                  child: ExpandedTextField(
                    hintText: 'Your message',
                    controller: contactController.messageController,
                    validator: (v) => Validator.validateMessage(v!),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                PrimaryButton(
                    onPressed: () {
                      final isValid =
                          contactController.key.currentState!.validate();

                      if (isValid) {
                        contactController.sendContactMessage(
                            email:
                                contactController.emailController.text.trim(),
                            name: contactController.nameController.text.trim(),
                            message:
                                contactController.messageController.text.trim(),
                            subject: contactController.subjectController.text
                                .trim());
                      }
                    },
                    buttonNameWidget: Obx(
                      () => contactController.isLoading.value
                          ? Lottie.asset(AppAssets.loaderWhite)
                          : const Text(
                              'Send now',
                              style: AppTextStyle.button1,
                            ),
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
        ),
      )),
    );
  }
}
