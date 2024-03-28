import 'package:animate_do/animate_do.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/core/resource/widgets/primary_button.dart';
import 'package:faraaz/core/resource/widgets/primary_textfield.dart';
import 'package:faraaz/feature/volunteer/volunteer.dart';
import 'package:flutter/material.dart';

class VolunteerForm extends StatefulWidget {
  const VolunteerForm({Key? key}) : super(key: key);

  @override
  State<VolunteerForm> createState() => _VolunteerFormState();
}

class _VolunteerFormState extends State<VolunteerForm> {
  final PageController pageController = PageController();
  SingingCharacter? _character = SingingCharacter.yes;
  FormSelection? formSelection= FormSelection.never;

  int activePage = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: FadeInDown(
            duration: const Duration(milliseconds: 600),
            from: 20,
            child: PageView(
              controller: pageController,
              onPageChanged: (int page) {
                setState(() {
                  activePage = page;
                });
              },
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1. Are you involved in politics? ',
                        style: AppTextStyle.body2
                            .copyWith(color: AppColors.natural2),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ListTile(
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
                      SizedBox(height: 16),
                      PrimaryButton(
                          onPressed: () {
                            pageController.animateToPage(1,
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeIn);
                          },
                          buttonNameWidget: const Text(
                            'Next',
                            style: AppTextStyle.button1,
                          ))
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '2. Will you use politics for your personal benefit/self-interest?',
                        style: AppTextStyle.body2
                            .copyWith(color: AppColors.natural2),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ListTile(
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
                      SizedBox(height: 16),
                      PrimaryButton(
                          onPressed: () {
                            pageController.animateToPage(2,
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeIn);
                          },
                          buttonNameWidget: const Text(
                            'Next',
                            style: AppTextStyle.button1,
                          ))
                    ],
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
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
                        Row(
                          children: [
                            Flexible(
                              child: const PrimaryTextField(
                                hintText: 'Height',
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Flexible(
                              child: const PrimaryTextField(
                                hintText: 'Gender',
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: const PrimaryTextField(
                                hintText: 'Religion',
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Flexible(
                              child: const PrimaryTextField(
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
                        PrimaryButton(
                            onPressed: () {
                              pageController.animateToPage(3,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                            },
                            buttonNameWidget: const Text(
                              'Continue',
                              style: AppTextStyle.button1,
                            )),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
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
                        PrimaryButton(
                            onPressed: () {
                              pageController.animateToPage(4,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                            },
                            buttonNameWidget: const Text(
                              'Continue',
                              style: AppTextStyle.button1,
                            )),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
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
                        PrimaryButton(
                            onPressed: () {
                              pageController.animateToPage(5,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                            },
                            buttonNameWidget: const Text(
                              'Continue',
                              style: AppTextStyle.button1,
                            )),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Information',
                          style: AppTextStyle.body1,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          'I have given money for donation',
                          style: AppTextStyle.body2
                              .copyWith(color: AppColors.natural2),
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
                        SizedBox(height: 16),
                    
                        Text(
                          'I have given money to a stranger who was in need ',
                          style: AppTextStyle.body2
                              .copyWith(color: AppColors.natural2),
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
                        SizedBox(height: 16,),
                    
                        Text(
                          'I have donated goods or clothing to a charity organization  ',
                          style: AppTextStyle.body2
                              .copyWith(color: AppColors.natural2),
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
                        SizedBox(height: 16,),
                        Text(
                          'I have worked as a volunteer with a charity organization ',
                          style: AppTextStyle.body2
                              .copyWith(color: AppColors.natural2),
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
                        SizedBox(height: 16,),
                        Text(
                          'Are you currently involved with any other NGOs, foundations, or social organizations? ',
                          style: AppTextStyle.body2
                              .copyWith(color: AppColors.natural2),
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
                    
                        SizedBox(height: 16,),
                        Text(
                          'Are you currently involved with any other NGOs, foundations, or social organizations? ',
                          style: AppTextStyle.body2
                              .copyWith(color: AppColors.natural2),
                        ),
                        SizedBox(height: 8,),
                        PrimaryTextField(),
                        SizedBox(height: 16,),
                        PrimaryButton(
                            onPressed: () {
                              pageController.animateToPage(1,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                            },
                            buttonNameWidget: const Text(
                              'Submit',
                              style: AppTextStyle.button1,
                            )),
                        SizedBox(height: 40,),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
enum FormSelection { never, once, sometimes, often }