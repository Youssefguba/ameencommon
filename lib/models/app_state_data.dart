import 'package:ameencommon/models/user_data.dart';
import 'package:flutter/material.dart';

class AppStateData with ChangeNotifier {
  UserModel userModel;


  void setProfileUser(UserModel userModel){
    this.userModel = userModel;
    notifyListeners();
  }
}