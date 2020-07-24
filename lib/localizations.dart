import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ameencommon/l10n/messages_all.dart';

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) async {
    final String name = locale.languageCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    print('localeName is '+localeName);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get title {
      return Intl.message('Amen',
          name: 'title', desc: 'amen');
  }

  String get emailAlreadyExisted {
      return Intl.message('Email is already existed try another email!',
          name: 'emailAlreadyExisted' );
  }

  String get emailCannotBeEmpty {
      return Intl.message('Email cannot be empty!',
          name: 'emailCannotBeEmpty' );
  }
  String get emailIsNotExist {
      return Intl.message('Email is not existed!',
          name: 'emailIsNotExist' );
  }
  String get cannotPasswordSmallerThan {
      return Intl.message('Should be greater than 6 numbers & letters',
          name: 'cannotPasswordSmallerThan' );
  }

  String get postYourDoaa {
    return Intl.message('Post Your Doaa',
        name: 'postYourDoaa');
  }

  String get recommend {
    return Intl.message('Recommend',
        name: 'recommend');
  }

  String get beware {
    return Intl.message('Beware of this Wish',
        name: 'beware');
  }

  String get welcomeToAmen {
    return Intl.message('Welcome to Ameen ❤',
        name: 'welcomeToAmen');
  }

  String get amen {
    return Intl.message('Amen', name: 'amen');
  }

  String get pastedbyAmen {
    return Intl.message('تم نقل هذا المنشور بواسطة تطبيق آمين', name: 'pastedbyAmen');
  }
  String get noPostsFound {
    return Intl.message('No Posts found', name: 'noPostsFound');
  }

  String get messages {
    return Intl.message('Messages', name: 'messages');
  }
  
  String get home {
    return Intl.message('Home', name: 'home');
  }

  String get profilePage {
    return Intl.message('Your Profile', name: 'profilePage');
  }  

  String get profile {
    return Intl.message('Profile', name: 'profile');
  }

  String get follow {
    return Intl.message('follow', name: 'follow');
  }

  String get unfollow {
    return Intl.message('unfollow', name: 'unfollow');
  }

  String get sendMessage {
    return Intl.message('Send Message', name: 'sendMessage');
  }
  String get updateData {
    return Intl.message('Update data', name: 'updateData');
  }

  String get search {
    return Intl.message('Search', name: 'search');
  }

  String get findYourFriends {
    return Intl.message('Find Your Friends', name: 'findYourFriends');
  }

  String get followers {
    return Intl.message('Followers', name: 'followers');
  }

  String get posts {
    return Intl.message('Posts', name: 'posts');
  }

  String get comment {
    return Intl.message('Comment', name: 'comment');
  }
  
  String get share {
    return Intl.message('Share', name: 'share');
  }

  String get writeAComment {
    return Intl.message('Write a comment..', name: 'writeAComment');
  }

  String get addADoaa {
    return Intl.message('Add a Doaa', name: 'addADoaa');
  }

  String get settings {
    return Intl.message('Settings', name: 'settings');
  }

  String get editYourProfile {
    return Intl.message('Edit Your Profile Information', name: 'editYourProfile');
  }

  String get logout {
    return Intl.message('Logout', name: 'logout');
  }

  String get login {
    return Intl.message('Login', name: 'login');
  }

  String get yourEmail {
    return Intl.message('Your Email', name: 'yourEmail');
  }

  String get password {
    return Intl.message('Password', name: 'password');
  }

  String get forgetPassword {
    return Intl.message('Do you forget your password ?', name: 'forgetPassword');
  }

  String get resetYourPassword {
    return Intl.message('Reset Your Password', name: 'resetYourPassword');
  }

  String get donotHaveAnAccount {
    return Intl.message("Don\'t have an account on Amen ?", name: 'donotHaveAnAccount');
  }
  String get doYouHaveAnAccount {
    return Intl.message("Do you already have an account ?", name: 'doYouHaveAnAccount');
  }

  String get createAccount {
    return Intl.message('Create Account', name: 'createAccount');
  }

  String get username {
    return Intl.message('Username', name: 'username');
  }

  String get createANewPassword {
    return Intl.message('Create A New Password', name: 'createANewPassword');
  }

  String get commentIsEmpty {
    return Intl.message('Comment is Empty!', name: 'commentIsEmpty');
  }

  String get signup {
    return Intl.message('Sign Up', name: 'signup');
  }
  String get shareADoaa {
    return Intl.message('Share a Doaa', name: 'shareADoaa');
  }

  String get writeADoaa {
    return Intl.message('Write a Doaa', name: 'writeADoaa');
  }

  String get or {
    return Intl.message('Or', name: 'or');
  }

  String get loginAsAnonymous {
    return Intl.message('Login As Anonymous', name: 'loginAsAnonymous');
  }

  String get postADoaaYouWant {
    return Intl.message('Post a Doaa You want to share', name: 'postADoaaYouWant');
  }
  
  String get notification {
    return Intl.message('Notification', name: 'notification');
  }
  String get noInternet {
    return Intl.message('No Internet Connection', name: 'noInternet');
  }
  String get deletePost {
    return Intl.message('Delete Post', name: 'deletePost');
  }
  String get savePost {
    return Intl.message('Add Post to Saved', name: 'savePost');
  }
  String get successfullyShared {
    return Intl.message('Your Post Shared Successfully', name: 'successfullyShared');
  }

  String get yes {
    return Intl.message('Yes', name: 'yes');
  }

  String get cancel {
    return Intl.message('Cancel', name: 'cancel');
  }


  String get reactAsAmen {
    return Intl.message('Says Amen to your Wish', name: 'reactAsAmen');
  }

  String get reactAsRecommend {
    return Intl.message('Recommend your wish for others', name: 'reactAsRecommendٌ');
  }

  String get reactAsForbidden {
    return Intl.message('Says Beware of your wish', name: 'reactAsForbidden');
  }
  String get typeYourMessage {
    return Intl.message('Type Your Message ...', name: 'typeYourMessage');
  }
  String get followsYou {
    return Intl.message('Started following you', name: 'followsYou');
  }
  String get commentOnYourPost {
    return Intl.message('comment on your post:', name: 'commentOnYourPost');
  }

}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}