import 'package:animate_do/animate_do.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/core/helper/logger.dart';
import 'package:faraaz/core/resource/widgets/primary_button.dart';
import 'package:faraaz/core/resource/widgets/primary_textfield.dart';
import 'package:faraaz/feature/volunteer/volunteer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_stepindicator/flutter_stepindicator.dart';
import 'package:get/get.dart';

class VolunteerForm extends StatefulWidget {
  const VolunteerForm({Key? key}) : super(key: key);

  @override
  State<VolunteerForm> createState() => _VolunteerFormState();
}

class _VolunteerFormState extends State<VolunteerForm> {
  final PageController pageController = PageController(initialPage: 0);
  SingingCharacter? _character = SingingCharacter.yes;
  FormSelection? formSelection = FormSelection.never;

  int activePage = 0;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    super.initState();
    pageController.addListener(_handlePageChange);
  }

  void _handlePageChange() {
    setState(() {
      _currentPage = pageController.page?.round() ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: FadeInDown(
          duration: const Duration(milliseconds: 600),
          from: 20,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: FlutterStepIndicator(
                  height: 28,
                  paddingLine: const EdgeInsets.symmetric(horizontal: 0),
                  positiveColor: AppColors.success500,
                  progressColor: AppColors.success100,
                  negativeColor: const Color(0xFFD5D5D5),
                  padding: const EdgeInsets.all(4),
                  list: const [1, 2, 3, 4, 5, 6],
                  division: 4,
                  onChange: (i) {},
                  page: _currentPage,
                ),
              ),
              SizedBox(height: 16,),
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      activePage = page;
                    });
                  },
                  children: [
                    section1(),
                    section2(),
                    section3(),
                    section4(),
                    section5(),
                    section6(),
                  ],
                ),
              ),
             
            ],
          )),
    );
  }

  Container section6() {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Information',
                style: AppTextStyle.body1,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'I have given money for donation',
                style: AppTextStyle.body2.copyWith(color: AppColors.natural2),
              ),
              const SizedBox(
                height: 16,
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Never'),
                leading: Radio<FormSelection>(
                  value: FormSelection.never,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Once'),
                leading: Radio<FormSelection>(
                  value: FormSelection.once,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Sometimes'),
                leading: Radio<FormSelection>(
                  value: FormSelection.sometimes,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Often'),
                leading: Radio<FormSelection>(
                  value: FormSelection.often,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'I have given money to a stranger who was in need ',
                style: AppTextStyle.body2.copyWith(color: AppColors.natural2),
              ),
              const SizedBox(
                height: 16,
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Never'),
                leading: Radio<FormSelection>(
                  value: FormSelection.never,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Once'),
                leading: Radio<FormSelection>(
                  value: FormSelection.once,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Sometimes'),
                leading: Radio<FormSelection>(
                  value: FormSelection.sometimes,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Often'),
                leading: Radio<FormSelection>(
                  value: FormSelection.often,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'I have donated goods or clothing to a charity organization  ',
                style: AppTextStyle.body2.copyWith(color: AppColors.natural2),
              ),
              const SizedBox(
                height: 16,
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Never'),
                leading: Radio<FormSelection>(
                  value: FormSelection.never,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Once'),
                leading: Radio<FormSelection>(
                  value: FormSelection.once,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Sometimes'),
                leading: Radio<FormSelection>(
                  value: FormSelection.sometimes,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Often'),
                leading: Radio<FormSelection>(
                  value: FormSelection.often,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'I have worked as a volunteer with a charity organization ',
                style: AppTextStyle.body2.copyWith(color: AppColors.natural2),
              ),
              const SizedBox(
                height: 16,
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Never'),
                leading: Radio<FormSelection>(
                  value: FormSelection.never,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Once'),
                leading: Radio<FormSelection>(
                  value: FormSelection.once,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Sometimes'),
                leading: Radio<FormSelection>(
                  value: FormSelection.sometimes,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Often'),
                leading: Radio<FormSelection>(
                  value: FormSelection.often,
                  groupValue: formSelection,
                  onChanged: (FormSelection? value) {
                    setState(() {
                      formSelection = value;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Are you currently involved with any other NGOs, foundations, or social organizations? ',
                style: AppTextStyle.body2.copyWith(color: AppColors.natural2),
              ),
              const SizedBox(
                height: 16,
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Yes'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.no,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                dense: true,
                horizontalTitleGap: 2,
                contentPadding: EdgeInsets.zero,
                title: const Text('Never'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.yes,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Are you currently involved with any other NGOs, foundations, or social organizations? ',
                style: AppTextStyle.body2.copyWith(color: AppColors.natural2),
              ),
              const SizedBox(
                height: 8,
              ),
              const PrimaryTextField(),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Flexible(
                    child: PrimaryButton(
                        color: AppColors.gray50,
                        onPressed: () {
                          pageController.animateToPage(4,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        buttonNameWidget: Text(
                          'Back',
                          style: AppTextStyle.button1
                              .copyWith(color: AppColors.black),
                        )),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    child: PrimaryButton(
                        onPressed: () {
                          pageController.animateToPage(1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        buttonNameWidget: const Text(
                          'Submit',
                          style: AppTextStyle.button1,
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
      ),
    );
  }

  Container section5() {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Address details',
                style: AppTextStyle.body1,
              ),
              const SizedBox(
                height: 24,
              ),
              const PrimaryTextField(
                hintText: 'Your village/area',
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'Word No',
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'Union/ City corporation',
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'Thana',
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'District',
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
              Row(
                children: [
                  Flexible(
                    child: PrimaryButton(
                        color: AppColors.gray50,
                        onPressed: () {
                          pageController.animateToPage(3,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        buttonNameWidget: Text(
                          'Back',
                          style: AppTextStyle.button1
                              .copyWith(color: AppColors.black),
                        )),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    child: PrimaryButton(
                        onPressed: () {
                          pageController.animateToPage(5,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        buttonNameWidget: const Text(
                          'Continue',
                          style: AppTextStyle.button1,
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
      ),
    );
  }

  Container section4() {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Contact Information',
                style: AppTextStyle.body1,
              ),
              const SizedBox(
                height: 24,
              ),
              const PrimaryTextField(
                hintText: 'Your email',
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'Mobile number',
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'Whatsapp number',
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'Which country do you live in?',
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
              Row(
                children: [
                  Flexible(
                    child: PrimaryButton(
                        color: AppColors.gray50,
                        onPressed: () {
                          pageController.animateToPage(2,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        buttonNameWidget: Text(
                          'Back',
                          style: AppTextStyle.button1
                              .copyWith(color: AppColors.black),
                        )),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    child: PrimaryButton(
                        onPressed: () {
                          pageController.animateToPage(4,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        buttonNameWidget: const Text(
                          'Continue',
                          style: AppTextStyle.button1,
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
      ),
    );
  }

  Container section3() {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Book Appointment',
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
                hintText: 'Your father name',
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'Your mother name',
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'Date of birth',
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'Nationality',
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Flexible(
                    child: PrimaryTextField(
                      hintText: 'Height',
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    child: PrimaryTextField(
                      hintText: 'Gender',
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Flexible(
                    child: PrimaryTextField(
                      hintText: 'Religion',
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    child: PrimaryTextField(
                      hintText: 'Occupation',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'Educational Qualificaiton',
              ),
              const SizedBox(
                height: 16,
              ),
              const PrimaryTextField(
                hintText: 'Subject you studied',
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
              Row(
                children: [
                  Flexible(
                    child: PrimaryButton(
                        color: AppColors.gray50,
                        onPressed: () {
                          pageController.animateToPage(1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        buttonNameWidget: Text(
                          'Back',
                          style: AppTextStyle.button1
                              .copyWith(color: AppColors.black),
                        )),
                  ),
                  Flexible(
                    child: PrimaryButton(
                        onPressed: () {
                          pageController.animateToPage(3,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        buttonNameWidget: const Text(
                          'Continue',
                          style: AppTextStyle.button1,
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
      ),
    );
  }

  Container section2() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Text(
              '2. Will you use politics for your personal benefit/self-interest?',
              style: AppTextStyle.body2.copyWith(color: AppColors.natural2),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              dense: true,
              horizontalTitleGap: 2,
              contentPadding: EdgeInsets.zero,
              title: const Text('Yes'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.yes,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              dense: true,
              horizontalTitleGap: 2,
              contentPadding: EdgeInsets.zero,
              title: const Text('No'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.no,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Flexible(
                  child: PrimaryButton(
                      color: AppColors.gray50,
                      onPressed: () {
                        pageController.animateToPage(0,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                      buttonNameWidget: Text(
                        'Back',
                        style: AppTextStyle.button1
                            .copyWith(color: AppColors.black),
                      )),
                ),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                  child: PrimaryButton(
                      onPressed: () {
                        pageController.animateToPage(2,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                      buttonNameWidget: const Text(
                        'Next',
                        style: AppTextStyle.button1,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container section1() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Text(
              '1. Are you involved in politics? ',
              style: AppTextStyle.body2.copyWith(color: AppColors.natural2),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              dense: true,
              horizontalTitleGap: 2,
              contentPadding: EdgeInsets.zero,
              title: const Text('Yes'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.yes,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              dense: true,
              horizontalTitleGap: 2,
              contentPadding: EdgeInsets.zero,
              title: const Text('No'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.no,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Flexible(
                  child: PrimaryButton(
                      color: AppColors.gray50,
                      onPressed: () {
                        Get.back();
                      },
                      buttonNameWidget: Text(
                        'Back',
                        style: AppTextStyle.button1
                            .copyWith(color: AppColors.black),
                      )),
                ),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                  child: PrimaryButton(
                      onPressed: () {
                        pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                      buttonNameWidget: const Text(
                        'Next',
                        style: AppTextStyle.button1,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

enum FormSelection { never, once, sometimes, often }
