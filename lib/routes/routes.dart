import 'package:get/get.dart';
import 'package:stellable/screen/bottom_sheet/filter_bottom_sheet.dart';
import 'package:stellable/screen/create_video/create_video.dart';
import 'package:stellable/screen/create_video/details.dart';
import 'package:stellable/screen/create_video/editing.dart';
import 'package:stellable/screen/create_video/record_audio.dart';
import 'package:stellable/screen/create_video/recording.dart';
import 'package:stellable/screen/create_video/video.dart';
import 'package:stellable/screen/live_streaming/live_performance.dart';
import 'package:stellable/screen/live_streaming/live_performance_comment.dart';
import 'package:stellable/screen/main_app/main_app.dart';
import 'package:stellable/screen/message/chat_screen.dart';
import 'package:stellable/screen/message/message_page.dart';
import 'package:stellable/screen/user_profile/advance_edit_profile.dart';
import 'package:stellable/screen/user_profile/edit_profile.dart';
import 'package:stellable/screen/user_profile/user_profile_other.dart';

import '../screen/login_screen/register.dart';
import '../screen/login_screen/splash_screen.dart';
import '../screen/login_screen/verify_number.dart';

class Routes {
  static const String splashscreen = '/splash_screen';
  static const String register = '/register';
  static const String verify_number = '/verify_number';
  static const String main_app = '/main_app';
  static const String liveperformance = '/live_performance';
  static const String live_performance_comment = '/live_performance_comment';
  static const String edit_profile = '/edit_profile';
  static const String advance_edit_profile = '/advance_edit_profile';
  static const String create_video = '/create_video';
  static const String filter_bottom_sheet = '/filter_bottom_sheet';
  static const String recording = '/recording';
  static const String editing = '/editing';
  static const String record_audio = '/record_audio';
  static const String details = '/details';
  static const String video = '/video';
  static const String message_page = '/message_page';
  static const String chat_screen = '/chat_screen';
  static const String user_profile_other = '/user_profile_other';

  static const _transition = Transition.leftToRight;
  static List<GetPage>? routes = <GetPage>[
    GetPage(
      name: splashscreen,
      page: () => SplashScreen(),
      transition: _transition,
    ),
    GetPage(
      name: register,
      page: () => Register(),
      transition: _transition,
    ),
    GetPage(
      name: verify_number,
      page: () => VerifyNumber(),
      transition: _transition,
    ),
    GetPage(
      name: main_app,
      page: () => MainApp(),
      transition: _transition,
    ),
    GetPage(
      name: liveperformance,
      page: () => LivePerformance(),
      transition: _transition,
    ),
    GetPage(
      name: live_performance_comment,
      page: () => LivePerformanceComment(),
      transition: _transition,
    ),
    GetPage(
      name: edit_profile,
      page: () => EditProfile(),
      transition: _transition,
    ),
    GetPage(
      name: advance_edit_profile,
      page: () => AdvanceEditProfile(),
      transition: _transition,
    ),
    GetPage(
      name: create_video,
      page: () => CreatVideo(),
      transition: _transition,
    ),
    GetPage(
      name: filter_bottom_sheet,
      page: () => FilterBottomSheet(),
      transition: _transition,
    ),
    GetPage(
      name: recording,
      page: () => Recording(),
      transition: _transition,
    ),
    GetPage(
      name: editing,
      page: () => Editing(),
      transition: _transition,
    ),
    GetPage(
      name: record_audio,
      page: () => RecordAudio(),
      transition: _transition,
    ),
    GetPage(
      name: details,
      page: () => Details(),
      transition: _transition,
    ),
    GetPage(
      name: video,
      page: () => Video(),
      transition: _transition,
    ),
    GetPage(
      name: message_page,
      page: () => MessagePage(),
      transition: _transition,
    ),
    GetPage(
      name: chat_screen,
      page: () => ChatScreen(),
      transition: _transition,
    ),
    GetPage(
      name: user_profile_other,
      page: () => UserProfileOther(),
      transition: _transition,
    ),
  ];
}
