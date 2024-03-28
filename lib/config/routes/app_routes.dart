
import 'package:faraaz/config/routes/app_pages.dart';
import 'package:faraaz/feature/celebrate/celebrate.dart';
import 'package:faraaz/feature/foundation/foundation.dart';
import 'package:faraaz/feature/journey/journey.dart';
import 'package:faraaz/feature/layout/layout.dart';
import 'package:faraaz/feature/meet/meet.dart';
import 'package:faraaz/feature/volunteer/volunteer.dart';
import 'package:faraaz/feature/volunteer/volunteer_form.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.LAYOUT, page: () => const Layout()),
    GetPage(name: Routes.CELEBRATE, page: () => const Celebrate()),
    GetPage(name: Routes.MEET, page: () => const Meet()),
    GetPage(name: Routes.JOURNEY, page: () => const Journey()),
    GetPage(name: Routes.FOUNDATION, page: () => const Foundation()),
    GetPage(name: Routes.VOLUNTEER, page: () => const Volunteer()),
    GetPage(name: Routes.VOLUNTEERFORM, page: () => const VolunteerForm()),

  ];
}
