import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:faraaz/config/routes/app_pages.dart';
import 'package:faraaz/core/constants/app_assets.dart';
import 'package:faraaz/core/constants/app_colors.dart';
import 'package:faraaz/core/constants/text_styles.dart';
import 'package:faraaz/feature/about/about.dart';
import 'package:faraaz/feature/awards/awards.dart';
import 'package:faraaz/feature/contact/contact.dart';
import 'package:faraaz/feature/home/home.dart';
import 'package:faraaz/feature/idea/idea.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _currentIndex = 0;
  final PageController controller = PageController(
    initialPage: 0,
  );
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: AppColors.natural1,
        child: Column(
          // Important: Remove any padding from the ListView.
          //   padding: EdgeInsets.zero,
          children: [
            const SafeArea(
                child: SizedBox(
              height: 40,
            )),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close_rounded,
                        color: AppColors.white,
                      ))),
            ),
            ListTile(
              title: Text(
                'Home',
                style: AppTextStyle.button2.copyWith(color: AppColors.white),
              ),
              leading: const Icon(
                IconlyLight.home,
                color: AppColors.white,
              ),
              //  selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                //    _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Celebrating Talent',
                style: AppTextStyle.button2.copyWith(color: AppColors.white),
              ),
              leading: const Icon(
                Icons.celebration_outlined,
                color: AppColors.white,
              ),
              //  selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                //    _onItemTapped(0);
                // Then close the drawer
            Get.toNamed(Routes.CELEBRATE);
              },
            ),
            ListTile(
              title: Text(
                'Journey',
                style: AppTextStyle.button2.copyWith(color: AppColors.white),
              ),
              leading: const Icon(
                Iconsax.map,
                color: AppColors.white,
              ),
              //  selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                //    _onItemTapped(0);
                // Then close the drawer
            Get.toNamed(Routes.CELEBRATE);
              },
            ),  ListTile(
              title: Text(
                'Articles',
                style: AppTextStyle.button2.copyWith(color: AppColors.white),
              ),
              leading: const Icon(
                IconlyLight.document,
                color: AppColors.white,
              ),
              //  selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                //    _onItemTapped(0);
                // Then close the drawer
            Get.toNamed(Routes.CELEBRATE);
              },
            ),
            ListTile(
              title: Text(
                'Meet',
                style: AppTextStyle.button2.copyWith(color: AppColors.white),
              ),
              leading: const Icon(
                Iconsax.user,
                color: AppColors.white,
              ),
              //  selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                //    _onItemTapped(0);
                // Then close the drawer
                Get.toNamed(Routes.MEET);
              },
            ), ListTile(
              title: Text(
                'Foundation',
                style: AppTextStyle.button2.copyWith(color: AppColors.white),
              ),
              leading: const Icon(
                Iconsax.user,
                color: AppColors.white,
              ),
              //  selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                //    _onItemTapped(0);
                // Then close the drawer
                Get.toNamed(Routes.FOUNDATION);
              },
            ),
            const Spacer(),
            SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
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
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: SvgPicture.asset(AppAssets.menuIcon)),
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [Home(), About(), Idea(), Awards(), Contact()],
      ),
      bottomNavigationBar: CustomNavigationBar(

        iconSize: 30.0,
        isFloating: true,
        selectedColor: AppColors.white,
        strokeColor: AppColors.white,
        unSelectedColor: Colors.white,
        backgroundColor: Colors.black,
        borderRadius: const Radius.circular(30.0),

        //   blurEffect: true,
        // opacity: 0.8,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(IconlyLight.home),
            selectedIcon: const Icon(IconlyBold.home),
            //  title: Text("Home"),
          ),
          CustomNavigationBarItem(
            icon: const Icon(IconlyLight.profile),
            selectedIcon: const Icon(IconlyBold.profile),
            //  title: Text("Cart"),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.lightbulb_outline),
            selectedIcon: const Icon(Icons.lightbulb),
            // title: Text("Explore"),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Iconsax.cup),
            selectedIcon: const Icon(Iconsax.cup5),
            // title: Text("Search"),
          ),
          CustomNavigationBarItem(
            icon: const Icon(IconlyLight.message),
            selectedIcon: const Icon(IconlyBold.message),
            //  title: Text("Contact"),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          HapticFeedback.lightImpact();
          controller.animateToPage(index,
              duration: const Duration(microseconds: 400),
              curve: Curves.easeInOutCubicEmphasized);
        },
      ),
    );
  }
}
