import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:faraaz/config/routes/app_pages.dart';
import 'package:faraaz/core/constants/app_assets.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/core/resource/widgets/primary_button.dart';
import 'package:faraaz/feature/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imgList = [
    'https://api.faraaz.info/storage/CMS/1697968168.jpeg',
    'https://api.faraaz.info/storage/CMS/1696167611.jpg',
    'https://api.faraaz.info/storage/CMS/1697960731.jpeg',
    'https://api.faraaz.info/storage/CMS/1696167643.jpg'
  ];

  final List<String> imgCaption = [
    'Small Gestures Can Have a Big Impact – Never Underestimate Their Power',
    'In every act of social work, we plant seeds of hope that bloom into forests of change.',
    'Even Little Acts of Help Can Make a Big Difference',
    'Faraaz Karim Chowdhury'
  ];
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: FadeInDown(
          duration: const Duration(milliseconds: 600),
          from: 20,
          child: Obx(
            () => Column(
              children: [
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    autoPlay: true,
                    aspectRatio: 2,
                    enlargeFactor: .2,
                    enlargeCenterPage: true,
                  ),
                  items: homeController.slidersList
                      .map((slider) => Container(
                            child: Container(
                              margin: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.network(slider.url,
                                          fit: BoxFit.cover, width: 1000.0),
                                      Positioned(
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromARGB(200, 0, 0, 0),
                                                Color.fromARGB(0, 0, 0, 0)
                                              ],
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                            ),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                          child: Text(
                                            '${slider.text} ',
                                            style: AppTextStyle.caption2Semibold
                                                .copyWith(
                                                    color: AppColors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 8,
                ),
                AnimatedSmoothIndicator(
                  activeIndex: _current,
                  count: homeController.slidersList.length,
                  textDirection: TextDirection.ltr,
                  onDotClicked: (value) {
                    _controller.animateToPage(value);
                  },
                  effect: const ScrollingDotsEffect(
                      activeDotColor: AppColors.natural2,
                      activeDotScale: 1.3,
                      dotHeight: 12,
                      dotWidth: 12,
                      dotColor: AppColors.natural6),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      const Text(
                        'Welcome',
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
                        'Welcome to my official apps, dedicated to inspire those who share a passion for social work. None of the work that I have done would have been possible without the unwavering support of the incredible people who stood by me. Together, we\'ve achieved so much, and I\'m grateful for every hand that played a part. This journey is about unity, about standing together, and about making a positive impact. It\'s not just my work, it\'s our collective effort. Let us join together to make a positive impact, one step at a time. Together we stand. Together we stand strong.',
                        style: AppTextStyle.body2
                            .copyWith(color: AppColors.natural4),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      PrimaryButton(
                          onPressed: () {},
                          buttonNameWidget: const Text(
                            'Learn more',
                            style: AppTextStyle.button2,
                          )),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'Journey so far',
                        style: AppTextStyle.headline3,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Obx(
                          ()=> ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return JourneyCard(
                                title: homeController.journeyList[index].title,
                                imageUrl: homeController.journeyList[index].url,
                                onPressed: (){
                                  Get.toNamed(Routes.JOURNEY, arguments:homeController.journeyList[index].slug);
                                },
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 16,
                              );
                            },
                            itemCount: homeController.journeyList.length),
                      ),

                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.circular(24)),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                'True heroism is not defined by extraordinary powers or grand gestures, but by the everyday acts of kindness and compassion that transform lives silently and selflessly ',
                                style: AppTextStyle.body2Medium
                                    .copyWith(color: AppColors.natural6),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Faraaz Karim Chowdhury',
                                style: AppTextStyle.captionMedium
                                    .copyWith(color: AppColors.natural4),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider(
                        color: AppColors.natural6,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.circular(24)),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                'Get in touch',
                                style: AppTextStyle.body2Medium
                                    .copyWith(color: AppColors.natural6),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        AppAssets.facebookIcon,
                                        width: 24,
                                      )),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        AppAssets.instagramIcon,
                                        width: 24,
                                      )),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        AppAssets.youtubeIcon,
                                        width: 24,
                                      )),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Divider(
                                color: AppColors.natural5,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Copyright@Faraaz Karim 2024 all right Reserved ',
                                textAlign: TextAlign.center,
                                style: AppTextStyle.caption
                                    .copyWith(color: AppColors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class JourneyCard extends StatelessWidget {
  const JourneyCard({
    super.key,
    required this.title,
    required this.imageUrl,
    this.onPressed,
  });

  final String title;
  final String imageUrl;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: SizedBox(
            height: 225.h,
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
        Positioned(
          bottom: 65,
          left: 10,
          child: Text(
            title,
            style: AppTextStyle.body1Bold.copyWith(color: AppColors.white),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: SizedBox(
              width: 150,
              child: PrimaryButton(
                  onPressed: onPressed,
                  buttonNameWidget: const Text(
                    'Read more',
                    style: AppTextStyle.button2,
                  ))),
        )
      ],
    );
  }
}
