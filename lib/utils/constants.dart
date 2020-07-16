import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Api {
  static const String API = 'https://quiet-tundra-98924.herokuapp.com/';
  static const headers = {'Content-Type': 'application/json'};
}

class DatabaseTable{
  static const String users = 'users';
  static const String posts = 'posts';
  static const String userPosts = 'userPosts';
  static const String comments = 'comments';
  static const String feeds = 'feeds';
  static const String following = 'following';
  static const String followers = 'followers';
  static const String timeline = 'timeline';
  static const String chatsList = 'chatsList';
  static const String messages = 'messages';
}

class DbRefs {
  static CollectionReference usersRef = Firestore.instance.collection(DatabaseTable.users);
  static CollectionReference postsRef = Firestore.instance.collection(DatabaseTable.posts);
  static CollectionReference commentsRef = Firestore.instance.collection(DatabaseTable.comments);
  static CollectionReference activityFeedRef = Firestore.instance.collection(DatabaseTable.feeds);
  static CollectionReference followersRef = Firestore.instance.collection(DatabaseTable.followers);
  static CollectionReference followingRef = Firestore.instance.collection(DatabaseTable.following);
  static CollectionReference timelineRef = Firestore.instance.collection(DatabaseTable.timeline);
  static CollectionReference chatsListRef = Firestore.instance.collection(DatabaseTable.chatsList);
  static CollectionReference messagesRef = Firestore.instance.collection(DatabaseTable.messages);
}


class AppTexts {
  static const String APP_NAME = 'آمين Amen';
  static const String Settings = 'الإعدادات';
  static const String ProfileSettings = 'إعدادات المعلومات الشخصية';
  static const String SavedPosts = 'الأدعية المحفوظة';
  static const String Logout = 'تسجيل خروج';
  static const String RemovePost = 'حذف المنشور';
  static const String SavePost = "حفظ المنشور في القائمة";

  static const String NotFoundPosts = 'لا يوجد أدعية';
  static const String NotFoundSavedPosts = 'لا يوجد أدعية في قائمة المحفوظات';
  static const String NotFoundComments = """لا يوجد تعليقات على هذا المنشور""";
  static const String hintText = "انشر الدعاء الذي تتمنى أن يتحقق ";

  static const String follow = 'متابعة';
  static const String unfollow = 'إلغاء المتابعة';
  static const String searchForFriends = "إبحث عن صديق لك";

}


class AppImages {
  static const coloredPrayIcon = 'assets/images/pray_color.png';
  static const coloredRecommendIcon = 'assets/images/recommend_color.png';
  static const coloredForbiddenIcon = 'assets/images/forbidden_color.png';
  static const arrowBack = 'assets/images/arrow_back.png';
  static const settings = 'assets/images/settings.png';
  static const AnonymousPerson = 'assets/images/icon_person.png';
  static const sendBtn = 'assets/images/send.png';
  static const imageNotAvailable = 'assets/images/img_not_available.jpeg';
}


class AppColors {
  static const cGreen = Color(0xF23E922A);
  static const cGreenDark = Color(0x8C3E922A);
  static const cBackground = Color(0xFFF3F3F3);
  static const cFacebookColor = Color.fromRGBO(59, 89, 152, 1);
  static const cTextColor = Color(0xFF4A4A4A);
  static const cBlack = Color(0xFF000000);

  static const MaterialColor green = const MaterialColor(0xFF3E922A, const <int, Color>{
    10: const Color(0x0D3E922A),
    50: const Color(0x263E922A),
    100: const Color(0x403E922A),
    200: const Color(0x593E922A),
    300: const Color(0x733E922A),
    400: const Color(0x8C3E922A),
    500: const Color(0xA63E922A),
    600: const Color(0xBF3E922A),
    700: const Color(0xD93E922A),
    800: const Color(0xF23E922A),
    900: const Color(0xFF3E922A),
  });
}

