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
          name: 'title', desc: 'Amen');
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



//
//  String get readThis {
//    return Intl.message('Read This', name: 'readThis');
//  }
//
//  String get iAmEmployee {
//    return Intl.message('I am Employee', name: 'iAmEmployee');
//  }
//
//  String get iAmAdmin {
//    return Intl.message('I am ADMIN', name: 'iAmAdmin');
//  }
//
//  String get openImageGalerry {
//    return Intl.message('Open Image Galerry', name: 'openImageGalerry');
//  }
//
//  String get openCamera {
//    return Intl.message('Open Camera', name: 'openCamera');
//  }
//
//  String get done {
//    return Intl.message('Done', name: 'done');
//  }
//
//  String get message {
//    return Intl.message('Message', name: 'message');
//  }
//
//  String get myToken {
//    return Intl.message('My Token', name: 'myToken');
//  }
//
//  String get addToken {
//    return Intl.message('Add Token', name: 'addToken');
//  }
//
//  String get create {
//    return Intl.message('Create', name: 'create');
//  }
//
//  String get businessInfo {
//    return Intl.message('Business Info', name: 'businessInfo');
//  }
//
//  String get counterInfo {
//    return Intl.message('Counter Info', name: 'counterInfo');
//  }
//
//  String get queueHistory {
//    return Intl.message('Queue History', name: 'queueHistory');
//  }
//
//  String get visitorHistory {
//    return Intl.message('Visitor History', name: 'visitorHistory');
//  }
//
//  String get serviceInfo {
//    return Intl.message('Service Info', name: 'serviceInfo');
//  }
//
//  String get personalInfo {
//    return Intl.message('Personal Info', name: 'personalInfo');
//  }
//
//  String get hello {
//    return Intl.message('Hello', name: 'hello');
//  }
//
//  String get setting {
//    return Intl.message('Setting', name: 'setting');
//  }
//
//  String get permission {
//    return Intl.message('Permission', name: 'permission');
//  }
//
//  String get peopleWait {
//    return Intl.message('People in waiting', name: 'peopleWait');
//  }
//
//  String get tokenNumber {
//    return Intl.message('Token Number', name: 'tokenNumber');
//  }
//
//  String get proceedTo {
//    return Intl.message('Proceed to', name: 'proceedTo');
//  }
//
//  String get counter {
//    return Intl.message('Counter', name: 'counter');
//  }
//
//  String get waiting {
//    return Intl.message('Waiting', name: 'waiting');
//  }
//
//  String get createdDate {
//    return Intl.message('Created', name: 'createdDate');
//  }
//
//  String get statusQueue {
//    return Intl.message('Status', name: 'statusQueue');
//  }
//
//  String get currentToken {
//    return Intl.message('Current Token', name: 'currentToken');
//  }
//
//  String get myQueue {
//    return Intl.message('My Queue', name: 'myQueue');
//  }
//
//  String get more {
//    return Intl.message('More', name: 'more');
//  }
//
//  String get myQueueToday {
//    return Intl.message('My Queue Today', name: 'myQueueToday');
//  }
//
//  String get openWebSite {
//    return Intl.message('Open Web Site', name: 'openWebSite');
//  }
//
//  String get subscribe {
//    return Intl.message('Subscribe', name: 'subscribe');
//  }
//
//  String get unsubscribe {
//    return Intl.message('Unsubscribe', name: 'unsubscribe');
//  }
//
//  String get notification {
//    return Intl.message('Notification', name: 'notification');
//  }
//
//  String get vibration {
//    return Intl.message('Vibration', name: 'vibration');
//  }
//
//  String get name {
//    return Intl.message('Name', name: 'name');
//  }
//
//  String get runningOn {
//    return Intl.message('Running On', name: 'runningOn');
//  }
//
//  String get versionName {
//    return Intl.message('Version Name', name: 'versionName');
//  }
//
//  String get versionCode {
//    return Intl.message('Version Code', name: 'versionCode');
//  }
//
//  String get appId {
//    return Intl.message('App ID', name: 'appId');
//  }
//
//  String get localTime {
//    return Intl.message('Local Time', name: 'localTime');
//  }
//
//  String get timezone {
//    return Intl.message('Timezone', name: 'timezone');
//  }
//
//  String get myPhoneNumber {
//    return Intl.message('My Phone Number', name: 'myPhoneNumber');
//  }
//
//  String get myEmail {
//    return Intl.message('My Email', name: 'myEmail');
//  }
//
//  String get switchAccount {
//    return Intl.message('Switch Account', name: 'switchAccount');
//  }
//
//  String get account {
//    return Intl.message('Account', name: 'account');
//  }
//
//  String get purchaseHistory {
//    return Intl.message('Purchase History', name: 'purchaseHistory');
//  }
//
//  String get subscribeNow {
//    return Intl.message('Subscribe Now', name: 'subscribeNow');
//  }
//
//  String get haveAnAccount {
//    return Intl.message('Have an account? Sign in', name: 'haveAnAccount');
//  }
//
//  String get signout {
//    return Intl.message('Signout', name: 'signout');
//  }
//
//  String get signin {
//    return Intl.message('Sign in', name: 'signin');
//  }
//
//  String get forgotPassword {
//    return Intl.message('Forgot Password', name: 'forgotPassword');
//  }
//
//  String get phone {
//    return Intl.message('Phone', name: 'phone');
//  }
//
//  String get loginMessage {
//    return Intl.message('We\'ll send an SMS message to verify your identity, please enter your number right below!', name: 'loginMessage');
//  }
//
//  String get verificationCode {
//    return Intl.message('Verification Code', name: 'verificationCode');
//  }
//
//  String get pinNotArrive {
//    return Intl.message('If your code does not arrive in 1 minute, touch', name: 'pinNotArrive');
//  }
//
//  String get here {
//    return Intl.message('here', name: 'here');
//  }
//
//  String get wantExit {
//    return Intl.message('Do you want exit', name: 'wantExit');
//  }
//
//  String get ok {
//    return Intl.message('OK', name: 'ok');
//  }
//
//  String get cancel {
//    return Intl.message('Cancel', name: 'cancel');
//  }
//
//  String get ago {
//    return Intl.message('ago', name: 'ago');
//  }
//
//  String get wrongVerifyCode {
//    return Intl.message('We couldn\'t verify your code, please try again!', name: 'wrongVerifyCode');
//  }
//
//  String get cannotCreateProfile {
//    return Intl.message('We couldn\'t create your profile for now, please try again later', name: 'cannotCreateProfile');
//  }
//
//  String get cannotRetry {
//    return Intl.message('You can\'t retry yet!', name: 'cannotRetry');
//  }
//
//  String get cannotPhoneEmpty {
//    return Intl.message('Your phone number can\'t be empty!', name: 'cannotPhoneEmpty');
//  }
//
//  String get invalidPhone {
//    return Intl.message('This phone number is invalid!', name: 'invalidPhone');
//  }
//
//  String get cannotVerificationCodeEmpty {
//    return Intl.message('Your verification code can\'t be empty!', name: 'cannotVerificationCodeEmpty');
//  }
//
//  String get invalidVerificationCode {
//    return Intl.message('This verification code is invalid!', name: 'invalidVerificationCode');
//  }
//
//  String get selectLanguage {
//    return Intl.message('Select Language', name: 'selectLanguage');
//  }
//
//  String get language {
//    return Intl.message('Language', name: 'language');
//  }
//
//  String get openDisplayUnit {
//    return Intl.message('Open Display Unit', name: 'openDisplayUnit');
//  }
//
//  String get showQueueHistory {
//    return Intl.message('Show Queue History', name: 'showQueueHistory');
//  }
//
//  String get issueToken {
//    return Intl.message('Issue Token', name: 'issueToken');
//  }
//
//  String get home {
//    return Intl.message('Home', name: 'home');
//  }
//
//  String get waitedForComplete {
//    return Intl.message('Waited for Complete', name: 'waitedForComplete');
//  }
//
//  String get cannotIssueTokenHoliday {
//    return Intl.message('You cannot issue the token during holiday. Today is ', name: 'cannotIssueTokenHoliday');
//  }
//
//  String get mustIssueTokenOfficeHours {
//    return Intl.message('You must issue the token during office hours', name: 'mustIssueTokenOfficeHours');
//  }
//
//  String get notMeetTimeInterval {
//    return Intl.message('Does not meet the time interval for create next token.', name: 'notMeetTimeInterval');
//  }
//
//  String get tokenList {
//    return Intl.message('Token List', name: 'tokenList');
//  }
//
//  String get nextToken {
//    return Intl.message('Next Token', name: 'nextToken');
//  }
//
//  String get selectDepartment {
//    return Intl.message('Select a Department', name: 'selectDepartment');
//  }
//
//  String get selectCounter {
//    return Intl.message('Select a Counter', name: 'selectCounter');
//  }
//
//  String get recall {
//    return Intl.message('Recall', name: 'recall');
//  }
//
//  String get currentStore {
//    return Intl.message('CURRENT STORE', name: 'currentStore');
//  }
//
//  String get storeList {
//    return Intl.message('Store List', name: 'storeList');
//  }
//
//  String get doYouWantRecall {
//    return Intl.message('Do you want recall?', name: 'doYouWantRecall');
//  }
//
//  String get deparment {
//    return Intl.message('Deparment', name: 'deparment');
//  }
//
//  String get insightCompare {
//    return Intl.message('Insight Compare', name: 'insightCompare');
//  }
//
//  String get insightLast7days {
//    return Intl.message('Insight Last 7 Days', name: 'insightLast7days');
//  }
//
//  String get insightToday {
//    return Intl.message('Insight Today', name: 'insightToday');
//  }
//
//  String get officeHours {
//    return Intl.message('Office Hours', name: 'officeHours');
//  }
//
//  String get publicHolidays {
//    return Intl.message('Public Holidays', name: 'publicHolidays');
//  }
//
//  String get storeForm {
//    return Intl.message('Store Form', name: 'storeForm');
//  }
//
//  String get reportCompare {
//    return Intl.message('Report Compare', name: 'reportCompare');
//  }
//
//  String get yesterday {
//    return Intl.message('Yesterday', name: 'yesterday');
//  }
//
//  String get today {
//    return Intl.message('Today', name: 'today');
//  }
//
//  String get totalTokenCount {
//    return Intl.message('Total Token Count', name: 'totalTokenCount');
//  }
//
//  String get report7daysAgo {
//    return Intl.message('Report 7 Days Ago', name: 'report7daysAgo');
//  }
//
//  String get reportPercentageToday {
//    return Intl.message('Report Percentage Today', name: 'reportPercentageToday');
//  }
//
//  String get counterList {
//    return Intl.message('Counter List', name: 'counterList');
//  }
//
//  String get createCounter {
//    return Intl.message('Create Counter', name: 'createCounter');
//  }
//
//  String get departmentList {
//    return Intl.message('Department List', name: 'departmentList');
//  }
//
//  String get departmentForm {
//    return Intl.message('Department Form', name: 'departmentForm');
//  }
//
//  String get createDepartment {
//    return Intl.message('Create Department', name: 'createDepartment');
//  }
//
//  String get letter {
//    return Intl.message('LETTER', name: 'letter');
//  }
//
//  String get start {
//    return Intl.message('START', name: 'start');
//  }
//
//  String get timeIntervalToIssueToken {
//    return Intl.message('Time Interval to Issue Token', name: 'timeIntervalToIssueToken');
//  }
//
//  String get timeIntervalToIssueTokenText {
//    return Intl.message('Time Interval is for prevent the user repeat issue the token. This is a setting in minitue unit.', name: 'timeIntervalToIssueTokenText');
//  }
//
//  String get timeInterval {
//    return Intl.message('Time Interval', name: 'timeInterval');
//  }
//
//  String get timeIntervalHint {
//    return Intl.message('Example: 2 minutes', name: 'timeIntervalHint');
//  }
//
//  String get save {
//    return Intl.message('SAVE', name: 'save');
//  }
//
//  String get holidayList {
//    return Intl.message('Holiday List', name: 'holidayList');
//  }
//
//  String get holidayDate {
//    return Intl.message('Holiday Date', name: 'holidayDate');
//  }
//
//  String get whatIsHolidayName {
//    return Intl.message('What is Holiday Name?', name: 'whatIsHolidayName');
//  }
//
//  String get pleaseEnterSomeText {
//    return Intl.message('Please Enter Some Text', name: 'pleaseEnterSomeText');
//  }
//
//  String get createHoliday {
//    return Intl.message('Create Holiday', name: 'createHoliday');
//  }
//
//  String get holidayForm {
//    return Intl.message('Holiday Form', name: 'holidayForm');
//  }
//
//  String get enableHolidayText {
//    return Intl.message('To enable Holiday, the switch MUST be ON.', name: 'enableHolidayText');
//  }
//
//  String get officeHoursList {
//    return Intl.message('Office Hours List', name: 'officeHoursList');
//  }
//
//  String get createOfficeHours {
//    return Intl.message('Create Office Hours', name: 'createOfficeHours');
//  }
//
//  String get enableThisStore {
//    return Intl.message('Enable This Store', name: 'enableThisStore');
//  }
//
//  String get edit {
//    return Intl.message('Edit', name: 'edit');
//  }
//
//  String get submit {
//    return Intl.message('Submit', name: 'submit');
//  }
//
//  String get register {
//    return Intl.message('Register', name: 'register');
//  }
//
//  String get counterForm {
//    return Intl.message('Counter Form', name: 'counterForm');
//  }
//
//  String get wantResetTokenNumber {
//    return Intl.message('Do you want reset the token number to start number?', name: 'wantResetTokenNumber');
//  }
//
//  String get resetTokenNumber {
//    return Intl.message('Reset Token Number', name: 'resetTokenNumber');
//  }
//
//  String get yes {
//    return Intl.message('Yes', name: 'yes');
//  }
//
//  String get no {
//    return Intl.message('No', name: 'no');
//  }
//
//  String get doYouAccept {
//    return Intl.message('Do you accept?', name: 'doYouAccept');
//  }
//
//  String get callToken {
//    return Intl.message('Call Token', name: 'callToken');
//  }
//
//  String get toStartNumber {
//    return Intl.message('to Start Number', name: 'toStartNumber');
//  }
//
//  String get officeHoursForm {
//    return Intl.message('Office Hours Form', name: 'officeHoursForm');
//  }
//
//  String get enableOfficeHours {
//    return Intl.message('To enable issue the token on client APP, the switch MUST be ON.', name: 'enableOfficeHours');
//  }
//
//  String get monday {
//    return Intl.message('Monday', name: 'monday');
//  }
//
//  String get tuesday {
//    return Intl.message('Tuesday', name: 'tuesday');
//  }
//
//  String get wednesday {
//    return Intl.message('Wednesday', name: 'wednesday');
//  }
//
//  String get thursday {
//    return Intl.message('Thursday', name: 'thursday');
//  }
//
//  String get friday {
//    return Intl.message('Friday', name: 'friday');
//  }
//
//  String get saturday {
//    return Intl.message('Saturday', name: 'saturday');
//  }
//
//  String get sunday {
//    return Intl.message('Sunday', name: 'sunday');
//  }
//
//  String get admin {
//    return Intl.message('Admin', name: 'admin');
//  }
//
//  String get adminLogin {
//    return Intl.message('Admin Login', name: 'adminLogin');
//  }
//
//  String get captured {
//    return Intl.message('Captured', name: 'captured');
//  }
//
//  String get meter {
//    return Intl.message('meter', name: 'meter');
//  }
//
//  String get kilometer {
//    return Intl.message('kilometer', name: 'kilometer');
//  }
//
//  String get away {
//    return Intl.message('away', name: 'away');
//  }
//
//  String get distance {
//    return Intl.message('Distance', name: 'distance');
//  }
//
//  String get userProfile {
//    return Intl.message('User Profile', name: 'userProfile');
//  }
//
//  String get visitorProfile {
//    return Intl.message('Visitor Profile', name: 'visitorProfile');
//  }
//
//  String get appInfo {
//    return Intl.message('App Info', name: 'appInfo');
//  }
//
//  String get online {
//    return Intl.message('Online', name: 'online');
//  }
//
//  String get offline {
//    return Intl.message('Offline', name: 'offline');
//  }
//
//  String get noMoreNextToken {
//    return Intl.message('No More Next Token', name: 'noMoreNextToken');
//  }
//
//  String get issueTokenAdminText {
//    return Intl.message('The user with this email should login with the client APP to check the real time latest token number.', name: 'issueTokenAdminText');
//  }
//
//  String get remove {
//    return Intl.message('Remove', name: 'remove');
//  }
//
//  String get wantRemove {
//    return Intl.message('Do you want remove?', name: 'wantRemove');
//  }
//
//  String get store {
//    return Intl.message('Store', name: 'store');
//  }
//
//  String get availableStore {
//    return Intl.message('Available Store', name: 'availableStore');
//  }
//
//  String get address {
//    return Intl.message('Address', name: 'address');
//  }
//
//  String get dialPhone {
//    return Intl.message('Dial Phone', name: 'dialPhone');
//  }
//
//  String get dial {
//    return Intl.message('Dial', name: 'dial');
//  }
//
//  String get sendEmail {
//    return Intl.message('Send Email', name: 'sendEmail');
//  }
//
//  String get email {
//    return Intl.message('Email', name: 'email');
//  }
//
//  String get code {
//    return Intl.message('Code', name: 'code');
//  }
//
//  String get coordinates {
//    return Intl.message('Coordinates', name: 'coordinates');
//  }
//
//  String get showWaitingQueueHistory {
//    return Intl.message('Show Waiting Queue History', name: 'showWaitingQueueHistory');
//  }
//
//  String get wantConfirm {
//    return Intl.message('Confirm?', name: 'wantConfirm');
//  }
//
//  String get storeSetting {
//    return Intl.message('Store Setting', name: 'storeSetting');
//  }
//
//  String get insight {
//    return Intl.message('Insight', name: 'insight');
//  }
//
//  String get otherSetting {
//    return Intl.message('Other Setting', name: 'otherSetting');
//  }
//
//  String get options {
//    return Intl.message('Options', name: 'options');
//  }
//
//  String get callNow {
//    return Intl.message('Call Now', name: 'callNow');
//  }
//
//  String get setupBluetoothPrinter {
//    return Intl.message('Setup Bluetooth Printer', name: 'setupBluetoothPrinter');
//  }
//
//  String get selectBluetoothPrinter {
//    return Intl.message('Select Bluetooth Printer', name: 'selectBluetoothPrinter');
//  }
//
//  String get discoverBluetooth {
//    return Intl.message('Discover Bluetooth', name: 'discoverBluetooth');
//  }
//
//  String get connect {
//    return Intl.message('Connect', name: 'connect');
//  }
//
//  String get disconnect {
//    return Intl.message('Disconnect', name: 'disconnect');
//  }
//
//  String get testPrinting {
//    return Intl.message('Test Printing', name: 'testPrinting');
//  }
//
//  String get connection {
//    return Intl.message('Connection', name: 'connection');
//  }
//
//  String get cannotPrint {
//    return Intl.message('Cannot Print', name: 'cannotPrint');
//  }
//
//  String get close {
//    return Intl.message('Close', name: 'close');
//  }
//
//  String get selectPhoto {
//    return Intl.message('Select Photo', name: 'selectPhoto');
//  }
//
//  String get onlyAcceptImageFormatNote {
//    return Intl.message('Only Accept Image Format', name: 'onlyAcceptImageFormatNote');
//  }
//
//  String get selectAndUploadPhoto {
//    return Intl.message('Select And Upload Photo', name: 'selectAndUploadPhoto');
//  }
//
//  String get shouldSelectPhoto {
//    return Intl.message('Should Select Photo', name: 'shouldSelectPhoto');
//  }
//
//  String get windowWizard {
//    return Intl.message('Window Wizard', name: 'windowWizard');
//  }
//
//  String get serviceWizard {
//    return Intl.message('Service Wizard', name: 'serviceWizard');
//  }
//
//  String get next {
//    return Intl.message('Next', name: 'next');
//  }
//
//  String get accept {
//    return Intl.message('Accept', name: 'accept');
//  }
//
//  String get setupEmployees {
//    return Intl.message('Setup Employees', name: 'setupEmployees');
//  }
//
//  String get editEmployee{
//    return Intl.message('Edit Employee', name: 'editEmployee');
//  }
//
//  String get employeeInfo{
//    return Intl.message('Employee Info', name: 'employeeInfo');
//  }
//
//  String get employeeList{
//    return Intl.message('Employee List', name: 'employeeList');
//  }
//
//  String get employee{
//    return Intl.message('Employee', name: 'employee');
//  }
//
//  String get employeeProfile{
//    return Intl.message('Employee Profile', name: 'employeeProfile');
//  }
//
//  String get setupLanguage {
//    return Intl.message('Setup Language', name: 'setupLanguage');
//  }
//
//  String get setupTheStall {
//    return Intl.message('Setup the Stall', name: 'setupTheStall');
//  }
//
//  String get setupPrinter {
//    return Intl.message('Setup Printer', name: 'setupPrinter');
//  }
//
//  String get visitorList {
//    return Intl.message('Visitor List', name: 'visitorList');
//  }
//
//  String get boardSetting {
//    return Intl.message('Board Setting', name: 'boardSetting');
//  }
//
//  String get pairCode {
//    return Intl.message('Pair Code', name: 'pairCode');
//  }
//
//  String get window {
//    return Intl.message('Window', name: 'window');
//  }
//
//  String get serviceList {
//    return Intl.message('Service List', name: 'serviceList');
//  }
//
//  String get serviceForm {
//    return Intl.message('Service Form', name: 'serviceForm');
//  }
//
//  String get serviceName {
//    return Intl.message('Service Name', name: 'serviceName');
//  }
//
//  String get serviceLetter {
//    return Intl.message('Service Letter', name: 'serviceLetter');
//  }
//
//  String get startNumber {
//    return Intl.message('Start Number', name: 'startNumber');
//  }
//
//  String get setupWindow {
//    return Intl.message('Setup Window', name: 'setupWindow');
//  }
//
//  String get windowForm {
//    return Intl.message('Window Form', name: 'windowForm');
//  }
//
//  String get windowName {
//    return Intl.message('Window Name', name: 'windowName');
//  }
//
//  String get enableWindow {
//    return Intl.message('Enable Window', name: 'enableWindow');
//  }
//
//  String get editWindow {
//    return Intl.message('Edit Window', name: 'editWindow');
//  }
//
//  String get openServiceList {
//    return Intl.message('Open Service List', name: 'openServiceList');
//  }
//
//  String get moveUp {
//    return Intl.message('Move Up', name: 'moveUp');
//  }
//
//  String get moveDown {
//    return Intl.message('Move Down', name: 'moveDown');
//  }
//
//  String get editService {
//    return Intl.message('Edit Service', name: 'editService');
//  }
//
//  String get visitUsAt {
//    return Intl.message('Visit us at', name: 'visitUsAt');
//  }
//  String get appName {
//    return Intl.message('App Name', name: 'appName');
//  }
//
//  String get packageName {
//    return Intl.message('Package Name', name: 'packageName');
//  }
//
//  String get buildNumber {
//    return Intl.message('Build Number', name: 'buildNumber');
//  }
//
//  String get versionNumber {
//    return Intl.message('Version Number', name: 'versionNumber');
//  }
//
//  String get termsOfUse {
//    return Intl.message('Terms of use', name: 'termsOfUse');
//  }
//
//  String get privacy {
//    return Intl.message('Privacy', name: 'privacy');
//  }
//
//  String get privacyPolicy {
//    return Intl.message('Privacy Policy', name: 'privacyPolicy');
//  }
//
//  String get device {
//    return Intl.message('Device', name: 'device');
//  }
//
//  String get testPrint {
//    return Intl.message('Test Print', name: 'testPrint');
//  }
//
//  String get printToken {
//    return Intl.message('Print Token', name: 'printToken');
//  }
//
//  String get tokenDetail {
//    return Intl.message('Token Detail', name: 'tokenDetail');
//  }
//
//  String get markAsCompleted {
//    return Intl.message('Mark as Completed', name: 'markAsCompleted');
//  }
//
//  String get markAllAsCompleted {
//    return Intl.message('Mark All as Completed', name: 'markAllAsCompleted');
//  }
//
//  String get markComplete {
//    return Intl.message('Mark Complete', name: 'markComplete');
//  }
//
//  String get recallToken {
//    return Intl.message('Recall Token', name: 'recallToken');
//  }
//
//  String get transferToken {
//    return Intl.message('Transfer Token', name: 'transferToken');
//  }
//
//  String get homePage {
//    return Intl.message('Home Page', name: 'homePage');
//  }
//
//  String get dashboard {
//    return Intl.message('Dashboard', name: 'dashboard');
//  }
//
//  String get editCounter {
//    return Intl.message('Edit Counter', name: 'editCounter');
//  }
//
//  String get openEditCounter {
//    return Intl.message('Open Edit Counter', name: 'openEditCounter');
//  }
//
//  String get openCounterList {
//    return Intl.message('Open Counter List', name: 'openCounterList');
//  }
//
//  String get setupFunctionality {
//    return Intl.message('Setup Functionality', name: 'setupFunctionality');
//  }
//
//  String get iWillBeTheEmployee {
//    return Intl.message('I Will Be The Employee', name: 'iWillBeTheEmployee');
//  }
//
//  String get setupCounter {
//    return Intl.message('Setup Counter', name: 'setupCounter');
//  }
//
//  String get completed {
//    return Intl.message('Completed', name: 'completed');
//  }
//
//  String get setupBizInfo {
//    return Intl.message('Setup Business Info', name: 'setupBizInfo');
//  }
//
//  String get setupOpeningHours {
//    return Intl.message('Setup Opening Hours', name: 'setupOpeningHours');
//  }
//
//  String get setupMaxTokenNumber {
//    return Intl.message('Setup Max Token Number', name: 'setupMaxTokenNumber');
//  }
//
//  String get enableOrDisable {
//    return Intl.message('Enable Or Disable', name: 'enableOrDisable');
//  }
//
//  String get openingHours {
//    return Intl.message('Opening Hours', name: 'openingHours');
//  }
//
//  String get backgroundColor {
//    return Intl.message('Background Color', name: 'backgroundColor');
//  }
//
//  String get textColor {
//    return Intl.message('Text Color', name: 'textColor');
//  }
//
//  String get numberOfTokenBox {
//    return Intl.message('Number Of Token Box', name: 'numberOfTokenBox');
//  }
//
//  String get tokenBoxNumber {
//    return Intl.message('Token Box Number', name: 'tokenBoxNumber');
//  }
//
//  String get fontScale {
//    return Intl.message('Font Scale', name: 'fontScale');
//  }
//
//  String get pageSize {
//    return Intl.message('Page Size', name: 'pageSize');
//  }
//
//  String get cancelToken {
//    return Intl.message('Cancel Token', name: 'cancelToken');
//  }
//
//  String get reportIssue {
//    return Intl.message('Report Issue', name: 'reportIssue');
//  }
//
//  String get shareTokenInfo {
//    return Intl.message('Share Token Info', name: 'shareTokenInfo');
//  }
//
//  String get openBoardScreen {
//    return Intl.message('Open Board Screen', name: 'openBoardScreen');
//  }
//
//  String get openBizProfile {
//    return Intl.message('Open Biz Profile', name: 'openBizProfile');
//  }
//
//  String get tokenCanceled {
//    return Intl.message('Token Canceled', name: 'tokenCanceled');
//  }
//
//  String get addVideo {
//    return Intl.message('Add Video', name: 'addVideo');
//  }
//
//  String get removeVideo {
//    return Intl.message('Remove Video', name: 'removeVideo');
//  }
//
//  String get tokenCreated {
//    return Intl.message('Token Created', name: 'tokenCreated');
//  }
//
//  String get addWindow {
//    return Intl.message('Add Window', name: 'addWindow');
//  }
//
//  String get addService {
//    return Intl.message('Add Service', name: 'addService');
//  }
//
//  String get addCounter {
//    return Intl.message('Add Counter', name: 'addCounter');
//  }
//
//  String get addEmployee {
//    return Intl.message('Add Employee', name: 'addEmployee');
//  }
//
//  String get addPrinter {
//    return Intl.message('Add Printer', name: 'addPrinter');
//  }
//
//  String get hours {
//    return Intl.message('Hours', name: 'hours');
//  }
//
//  String get selectCompany {
//    return Intl.message('Select Company', name: 'selectCompany');
//  }
//
//  String get tokenInformation {
//    return Intl.message('Token Information', name: 'tokenInformation');
//  }
//
//  String get openWaze {
//    return Intl.message('Open Waze', name: 'openWaze');
//  }
//
//  String get selectYourCountry {
//    return Intl.message('Select Your Country', name: 'selectYourCountry');
//  }
//
//  String get branch {
//    return Intl.message('Branch', name: 'branch');
//  }
//
//  String get editBranch {
//    return Intl.message('Edit Branch', name: 'editBranch');
//  }
//
//  String get branchInfo {
//    return Intl.message('Branch Info', name: 'branchInfo');
//  }
//
//  String get currentBranch {
//    return Intl.message('Current Branch', name: 'currentBranch');
//  }
//
//  String get smsHistory {
//    return Intl.message('SMS History', name: 'smsHistory');
//  }
//
//  String get branches {
//    return Intl.message('Branches', name: 'branches');
//  }
//
//  String get addBranch {
//    return Intl.message('Add Branch', name: 'addBranch');
//  }
//
//  String get messageList {
//    return Intl.message('Message List', name: 'messageList');
//  }
//
//  String get addMessage {
//    return Intl.message('Add Message', name: 'addMessage');
//  }
//
//  String get messageInfo {
//    return Intl.message('Message Info', name: 'messageInfo');
//  }
//
//  String get deleteMessage {
//    return Intl.message('Delete Message', name: 'deleteMessage');
//  }
//
//  String get pushMessage {
//    return Intl.message('Push Message', name: 'pushMessage');
//  }
//
//  String get appearance {
//    return Intl.message('Appearance', name: 'appearance');
//  }
//
//  String get scan {
//    return Intl.message('Scan', name: 'scan');
//  }
//
//  String get qrcode {
//    return Intl.message('QRCode', name: 'qrcode');
//  }

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